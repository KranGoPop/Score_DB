-- Can be inserted after school had inserted

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Lawrence', 'Parks', 'some1@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Central Institute'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Michael', 'Wright', 'some2@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Central Institute'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Patrick', 'Manning', 'some3@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Central Institute'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Harry', 'Doyle', 'some4@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Central Institute'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Brian', 'Brewer', 'some5@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Desert Winds School for Boys'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Miguel', 'Webb', 'some6@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Desert Winds School for Boys'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Douglas', 'Glover', 'some7@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Desert Winds School for Boys'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Ramon', 'Massey', 'some8@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Desert Winds School for Boys'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Byron', 'Harper', 'some9@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Desert Winds School for Boys'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Byron', 'Harper', 'some10@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Desert Winds School for Boys'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('David', 'Coleman', 'some11@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Littlewood Charter School'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Tyrone', 'Thompson', 'some12@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Littlewood Charter School'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('John', 'Taylor', 'some13@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Littlewood Charter School'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('Robert', 'Leonard', 'some14@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Littlewood Charter School'));

INSERT INTO users (first_name, second_name, email, password, school_id)
VALUES ('John', 'Barrett', 'some15@gmail.com', 'c3e9fee675716951c547abe11e49e58190f9b1854924fa605b92d423be8716ab',
(SELECT id FROM school WHERE name = 'Littlewood Charter School'));