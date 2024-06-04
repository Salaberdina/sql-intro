/*
brends
tabaco
goos
autors
mixes
ingridients
*/

BEGIN;
CREATE table brends (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

CREATE table tabaco (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    brend_id INT REFERENCES brends (id) NOT NULL,
    streght INT NOT NULL
);

CREATE table goos (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    brend_id INT REFERENCES brends (id) NOT NULL,
    streght INT NOT NULL
);

CREATE table autors (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    contact VARCHAR,
    phone VARCHAR,
    email VARCHAR
);

CREATE table mixes (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    streght INT NOT NULL,
    autor_id INT REFERENCES autors (id) NOT NULL
);

CREATE table ingridients (
    id SERIAL PRIMARY KEY,
    tabaco_id INT REFERENCES tabaco (id),
    goo_id INT REFERENCES goos (id),
    amount INT NOT NULL
);
COMMIT;

ALTER TABLE ingridients ADD COLUMN mix_id INT REFERENCES mixes (id) NOT NULL;