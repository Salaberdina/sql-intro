CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR NOT NULL
);

CREATE TABLE rums (
    id SERIAL PRIMARY KEY,
    number INT
);

CREATE TABLE phones (
    id SERIAL PRIMARY KEY,
    number VARCHAR NOT NULL
);

CREATE TABLE rums_phones (
    rum_id INT REFERENCES rums (id) NOT NULL,
    phone_id INT REFERENCES phones (id) NOT NULL
);

CREATE TABLE rums_users (
    rum_id INT REFERENCES rums (id) NOT NULL,
    user_id INT REFERENCES users (id) NOT NULL
);