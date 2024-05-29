CREATE TABLE autors (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    pseudoname VARCHAR
);

CREATE TABLE genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL
);

CREATE TABLE bookcases (
    id SERIAL PRIMARY KEY,
    number INT NOT NULL
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    autor_id INT REFERENCES autors (id),
    genre_id INT REFERENCES genres (id),
    bookcase_id INT REFERENCES bookcases (id)
);

CREATE TABLE users (
   id SERIAL PRIMARY KEY,
   name VARCHAR NOT NULL,
   age INT NOT NULL 
);

CREATE TABLE history (
   id SERIAL PRIMARY KEY,
   book_id INT REFERENCES books (id),
   user_id INT REFERENCES users (id),
   picked_at TIMESTAMP WITH TIMEZONE DEFAULT NOW(),
   returned_at TIMESTAMP WITH TIMEZONE DEFAULT NULL
);

INSERT INTO autors (pseudoname) VALUES ('tolstoy'), ('lev');

INSERT INTO genres (name) VALUES ('drama'), ('triller');

INSERT INTO bookcases (number) VALUES (1), (2), (3);

INSERT INTO books (name) VALUES