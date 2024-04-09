-- 1. Вывсести всех школьников, у которых есть хотябы одно принятое достижение.
SELECT DISTINCT users.first_name, users.second_name, users.email, school.name AS school
FROM users 
JOIN school ON users.school_id = school.id
JOIN achievement ON users.id = achievement.user_id
WHERE achievement.status = 'ok';


-- 2. вывести всех админов и подичненные им школы, при том у каждого должна быть хотябы одна
SELECT email, first_name, second_name, school.name AS school
FROM admin JOIN school ON admin.id = school.admin_id WHERE admin.email IN (
  SELECT email
  FROM admin
  JOIN school ON admin.id = school.admin_id
  GROUP BY email
  HAVING COUNT(*) > 0
);

-- 3. Вывести все события, с которыми нет достижений
SELECT id, name FROM event WHERE id NOT IN (SELECT event.id AS id FROM event JOIN achievement ON event.id = achievement.event_id GROUP BY event.id);

-- 4. Вывести балл школы Central Institute.
SELECT SUM(event.score) AS score FROM users
JOIN achievement AS ach ON ach.user_id = users.id
JOIN event ON event.id = ach.event_id
WHERE ach.status = 'ok' AND users.school_id IN (SELECT id FROM school WHERE name = 'Central Institute');

-- Или если кэшируюшее поле score в school имеет актуальную информацию
SELECT score FROM school WHERE name = 'Central Institute';

-- 5. Вывести рэйтинг и баллы школ.
SELECT ROW_NUMBER() OVER (ORDER BY score DESC) AS rank, score, name FROM (
  SELECT SUM(event.score) AS score, school.name FROM users
    JOIN school ON school.id = users.school_id
    JOIN achievement AS ach ON users.id = ach.id
    JOIN event ON event.id = ach.event_id
    WHERE ach.status = 'ok'
    GROUP BY school.id
  UNION
  SELECT 0 AS score, school.name FROM school WHERE name NOT IN (
    SELECT DISTINCT school.name FROM users
    JOIN school ON school.id = users.school_id
    JOIN achievement AS ach ON users.id = ach.id
    JOIN event ON event.id = ach.event_id
    WHERE ach.status = 'ok'
    GROUP BY school.id
  )
) AS tbl;

-- Или есть score поле таблицы school актуально, можно так
SELECT ROW_NUMBER() OVER (ORDER BY score DESC) AS rank, score, name FROM school;

-- 5. Вывести балл админа admin@admin.com
SELECT AVG(t.score) AS score FROM (
  SELECT SUM(score) AS score FROM account WHERE type = 'user' AND school_id IN (
    SELECT id FROM school WHERE admin_id IN (SELECT id FROM account WHERE email = 'admin@admin.com')
  ) GROUP BY school_id
) AS t;


-- 6. Вывести рейтинг пользователей
SELECT ROW_NUMBER() OVER (ORDER BY tbl.score DESC) AS rank, tbl.score, users.first_name, users.second_name, users.email FROM (
  SELECT users.id, SUM(event.score) AS score FROM users
  JOIN achievement AS ach ON users.id = ach.user_id
  JOIN event ON ach.event_id = event.id
  WHERE ach.status = 'ok'
  GROUP BY users.id
  UNION
  SELECT users.id, 0 AS score FROM users WHERE id NOT IN (
    SELECT DISTINCT users.id FROM users
    JOIN achievement AS ach ON users.id = ach.user_id
    JOIN event ON ach.event_id = event.id
    WHERE ach.status = 'ok'
    GROUP BY users.id
  )
) AS tbl
JOIN users ON tbl.id = users.id;

-- Или если поле score пользователя актуально
SELECT ROW_NUMBER() OVER (ORDER BY score DESC) AS rank, score, first_name, second_name, email FROM users;

-- 7. Вывести рейтинг админов
SELECT ROW_NUMBER() OVER (ORDER BY score DESC) AS rank, score, first_name, second_name, email FROM admin;

-- 8. Вывести список паролей 'Adam Smith', чтобы понять можно ли ставить новый
SELECT 0 AS rank, password FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'
UNION
(SELECT ROW_NUMBER() OVER (ORDER BY date DESC) AS rank, password FROM password WHERE admin_id = (
  SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'
)) ORDER BY rank DESC;

-- 9. Вывести баллы пользователя some2@gmail.com
SELECT SUM(event.score) AS score FROM users
JOIN achievement AS ach ON ach.user_id = users.id
JOIN event ON event.id = ach.event_id
WHERE ach.status = 'ok' AND users.email = 'some2@gmail.com';

-- 10. Вывести список событий, за которые ни один пользователь не брался
SELECT name FROM event WHERE id NOT IN (
  SELECT event_id FROM achievement
);