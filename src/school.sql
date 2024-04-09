-- Can be inserted after Admin and City tables

INSERT INTO school (name, city_id, admin_id)
VALUES ('Central Institute',
(SELECT id FROM city WHERE name = 'Los Angeles'),
(SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Desert Winds School for Boys',
(SELECT id FROM city WHERE name = 'Los Angeles'),
(SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Littlewood Charter School',
(SELECT id FROM city WHERE name = 'Los Angeles'),
(SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Lakewood Secondary School',
(SELECT id FROM city WHERE name = 'Los Angeles'),
(SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Golden Oak School for Boys',
(SELECT id FROM city WHERE name = 'Los Angeles'),
(SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Rainbow High',
(SELECT id FROM city WHERE name = 'Los Angeles'),
(SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Pleasant Valley Elementary',
(SELECT id FROM city WHERE name = 'Los Angeles'),
(SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Paradise School',
(SELECT id FROM city WHERE name = 'Los Angeles'),
(SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Winterville Technical School',
(SELECT id FROM city WHERE name = 'Tulsa'),
(SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Martin Luther King High',
(SELECT id FROM city WHERE name = 'Tulsa'),
(SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Granite Hills Elementary',
(SELECT id FROM city WHERE name = 'Tulsa'),
(SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('River Fork Grammar School',
(SELECT id FROM city WHERE name = 'Tulsa'),
(SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Golden Valley Elementary',
(SELECT id FROM city WHERE name = 'Tulsa'),
(SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Bayshore Kindergarten',
(SELECT id FROM city WHERE name = 'Tulsa'),
(SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Laguna Creek Academy',
(SELECT id FROM city WHERE name = 'Tulsa'),
(SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Grapevine Conservatory',
(SELECT id FROM city WHERE name = 'Tulsa'),
(SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Elk Creek School for Girls',
(SELECT id FROM city WHERE name = 'Tulsa'),
(SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'));

INSERT INTO school (name, city_id, admin_id)
VALUES ('Hawking School for Girls',
(SELECT id FROM city WHERE name = 'Tulsa'),
(SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'));