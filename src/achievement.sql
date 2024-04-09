-- Can be inserted after User and Event table insertions

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some1@gmail.com'),
(SELECT id FROM event WHERE name = 'The steeper the mountain the harder'),
'ok', '3f76818f507fe7eb6422bd0703c64c88');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some2@gmail.com'),
(SELECT id FROM event WHERE name = 'The steeper the mountain the harder'),
'ok', '03c7c0ace395d80182db07ae2c30f034');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some2@gmail.com'),
(SELECT id FROM event WHERE name = 'I would have gotten the promotion'),
'ok', '3691308f2a4c2f6983f2880d32e29c84');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some2@gmail.com'),
(SELECT id FROM event WHERE name = 'The secret of success is constancy'),
'ok', '9f6e6800cfae7749eb6c486619254b9c');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some4@gmail.com'),
(SELECT id FROM event WHERE name = 'The secret of success is constancy'),
'ok', '8f60c8102d29fcd525162d02eed4566b');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some5@gmail.com'),
(SELECT id FROM event WHERE name = 'The secret of success is constancy'),
'ok', '2d02e669731cbade6a64b58d602cf2a4');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some5@gmail.com'),
(SELECT id FROM event WHERE name = 'Deep listening is miraculous for both listener'),
'ok', 'af15d5fdacd5fdfea300e88a8e253e82');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some6@gmail.com'),
(SELECT id FROM event WHERE name = 'Deep listening is miraculous for both listener'),
'ok', '16fcb1091f8a0cc70c96e2ff97fdd213');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some7@gmail.com'),
(SELECT id FROM event WHERE name = 'Deep listening is miraculous for both listener'),
'ok', '4bbde07660e5eff90873642cfae9a8dd');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some7@gmail.com'),
(SELECT id FROM event WHERE name = 'You, yourself, as much as anybody in the e'),
'ok', '925544d7f90cd3663531546f080bbed8');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some8@gmail.com'),
(SELECT id FROM event WHERE name = 'Life is really simple, but we insist on making'),
'pending', '033c91317f9b6795106a825cf8ef773d');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some9@gmail.com'),
(SELECT id FROM event WHERE name = 'Life is really simple, but we insist on making'),
'pending', 'b330cf2425c6ac1561c63f825e680a53');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some10@gmail.com'),
(SELECT id FROM event WHERE name = 'Life is really simple, but we insist on making'),
'ok', 'a03fd6e43c16b44429d829dffa31321a');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some10@gmail.com'),
(SELECT id FROM event WHERE name = 'He had accidentally hacked into his'),
'reject', '3c1d4baa14ad36f3e5bfb6598caa3995');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some10@gmail.com'),
(SELECT id FROM event WHERE name = 'At that moment he was not listening to music'),
'pending', '81f5a969cf2a26e39dafd4b22739e3bc');

INSERT INTO achievement (user_id, event_id, status, file)
VALUES (
(SELECT id FROM users WHERE email = 'some11@gmail.com'),
(SELECT id FROM event WHERE name = 'Buried deep in the snow, he hoped his batteries'),
'ok', 'c62fc823fd78a1c22ade6466a4ff8468');

