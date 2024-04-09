-- Can be inserted after Admin table
INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'),
'b767cfa4f280eaf06862a82b3e9f708af5d9a33e7f3a7ac49e32801e0beff9d2', '2017-01-01 00:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'),
'8394eaafaf982af85171a6270b51f7d2c370e511ca3a89327d4c1f78007e49e9', '2017-02-02 01:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'),
'2f7a7d3d1cc8c4725dc8bb363b377b4b7070fcc460609a86539455bcea54c914', '2017-03-03 02:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'),
'd98ac2884d6a7cc48b008994644aeb207594ab1bc668fb132b773e5f71923ef8', '2017-04-04 03:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Adam' AND second_name = 'Smith'),
'987d89223f72728646807275dcd27b7ae973acef98c702756f453ae789755c96', '2017-05-05 04:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'),
'775c884c7645b129170baba2b84c9df33fabdd8f2489c8201ff0ba9c59f01a60', '2017-06-06 05:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'),
'f5e964ab958636237513169b7186c0303c5f41bedf5e9ceb8aecb74d60b0ffb2', '2017-07-07 06:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'),
'0fdba44fd8d94b1f714ac88b7e7793cd314e251d9be17c66926122ef78aa88bd', '2017-08-08 07:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Michael' AND second_name = 'Jordan'),
'5b348b970f42c259b653f790f87e1f49fe7c91641fcd8fa547231d8a8b9a3cae', '2017-09-09 08:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Mr.' AND second_name = 'Papa'),
'55d50a922441c14c35b527aa2505131fc84047dd750a2912a1761ccec54693ce', '2017-10-10 09:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Joseph' AND second_name = 'Campbell'),
'5a91dd33194c2bf5f2ea6ce1d41dc4d077bae8a22586c55046726a3b51e33801', '2017-11-11 10:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Joseph' AND second_name = 'Campbell'),
'31ccbfe0d579caab2aa5ed05ec62aab41a1eef537a5e57d81ff9caf986fc00b7', '2017-12-12 11:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Joseph' AND second_name = 'Campbell'),
'7b3c5905fc3f74f471bff8ed1bc4a05a7be25f1fd92c0f38981700901f2e831e', '2018-01-01 00:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Joseph' AND second_name = 'Campbell'),
'8ed27f385ffd37e26dc729e8e7565e978798460d35272a18b1434cdd0190610a', '2018-02-02 01:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Joseph' AND second_name = 'Campbell'),
'96e923ca63ed1c00ef34ced9e0806b9df4c698087fc34d1e54533ed99ffe14ad', '2018-03-03 02:00:00');

INSERT INTO password (admin_id, password, date)
VALUES ((SELECT id FROM admin WHERE first_name = 'Joseph' AND second_name = 'Campbell'),
'c16a55e12bf5f658124c2ee4e0ac2a6d7779282f5f7da4ed3f2949f4de42c33f', '2018-04-04 03:00:00');

