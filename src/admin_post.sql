-- Post can be executed after non-post insertions done.
UPDATE admin SET score = (
  SELECT COALESCE(AVG(tbl.score), 0) FROM 
  (
    SELECT COALESCE(SUM(event.score), 0) AS score, school.id FROM users
    JOIN achievement AS ach ON ach.user_id = users.id
    JOIN event ON ach.event_id = event.id
    JOIN school ON users.school_id = school.id
    WHERE ach.status = 'ok' AND users.school_id = school.id AND school.admin_id = admin.id GROUP BY school.id
    UNION
    SELECT 0 AS score, id FROM school WHERE admin_id = admin.id AND id NOT IN (
      SELECT DISTINCT school.id FROM users
        JOIN achievement AS ach ON ach.user_id = users.id
        JOIN event ON ach.event_id = event.id
        JOIN school ON users.school_id = school.id
        WHERE ach.status = 'ok' AND users.school_id = school.id AND school.admin_id = admin.id
    )
  ) AS tbl
);