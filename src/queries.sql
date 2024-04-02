-- 1. Вывсести всех школьников и где они учаться
SELECT first_name AS account.first_name, second_name AS account.second_name, email AS account.email, school AS school.name
FROM account JOIN school ON account.school_id = school.id WHERE account.type = 'user';