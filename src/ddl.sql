CREATE TABLE event (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  score BIGINT NOT NULL,
  name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE admin (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  first_name VARCHAR (50) NOT NULL,
  second_name VARCHAR (50) NOT NULL,
  email VARCHAR (50) NOT NULL UNIQUE,
  password VARCHAR (64) NOT NULL,
  score BIGINT NOT NULL DEFAULT 0
);

CREATE TABLE password (
  admin_id BIGINT NOT NULL,
  password VARCHAR (64) NOT NULL,
  date TIMESTAMP NOT NULL,
  CONSTRAINT admin_id_f
      FOREIGN KEY(admin_id) 
        REFERENCES admin(id)
        ON DELETE CASCADE
);

CREATE TABLE city (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR (50) NOT NULL UNIQUE
);

CREATE TABLE school (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  name VARCHAR (50) NOT NULL UNIQUE,
  city_id BIGINT NOT NULL,
  admin_id BIGINT NOT NULL DEFAULT 0,
  score BIGINT NOT NULL DEFAULT 0,
  CONSTRAINT city_id_f
      FOREIGN KEY(city_id)
        REFERENCES city(id)
        ON DELETE CASCADE,
  CONSTRAINT admin_id_f
      FOREIGN KEY(admin_id)
      REFERENCES admin(id)
      ON DELETE CASCADE
);

CREATE TABLE users (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  first_name VARCHAR (50) NOT NULL,
  second_name VARCHAR (50) NOT NULL,
  email VARCHAR (50) NOT NULL UNIQUE,
  password VARCHAR (64) NOT NULL,
  score BIGINT NOT NULL DEFAULT 0,
  school_id BIGINT NOT NULL DEFAULT 0,
  CONSTRAINT school_id_f
    FOREIGN KEY (school_id)
      REFERENCES school (id)
      ON DELETE SET DEFAULT
);

CREATE TYPE status AS ENUM ('pending', 'ok', 'reject');
CREATE TABLE achievement (
  id BIGSERIAL NOT NULL PRIMARY KEY,
  event_id BIGINT NOT NULL,
  user_id BIGINT NOT NULL,
  status status NOT NULL DEFAULT 'pending',
  file VARCHAR (32) NOT NULL,
  CONSTRAINT user_id_f
      FOREIGN KEY(user_id) 
        REFERENCES users(id)
        ON DELETE CASCADE,
  CONSTRAINT event_id_f
      FOREIGN KEY(event_id)
        REFERENCES event(id)
        ON DELETE CASCADE
);