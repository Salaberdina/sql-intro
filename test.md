## git
- git clone 
- git checkout -b hui
- git checkout hui
- git add .
- git commit -m ""
- git push
- git pull
- git checkout master
  git merge test


## docker
- docker-compose up -d
- docker run название контейнера
- docker-compose stop
- docker stop
- docker ps


## sql
- CREATE TABLE autors (id SERIAL PRIMARY KEY, name VARCHAR)
- INT
- NOT NULL
- VARCHAR
- autor_id INT REFERENCES autors (id)
- NUMEREC (57,2)
- DROP TABLE autors
- INSERT INTO autors (name, contact) VALUES ('sveta', 'sveta@mail.ru);
- UPDATE autors SET name='sveta'
  WHERE id=1
- ALTER TABLE autors ADD COLUMN age INT
- SELECT * FROM autors
- SELECT autor.id FROM autors
- SELECT users.name AS username FROM users
- SELECT * FROM mixes
  WHERE mixes.id=1
- SELECT * FROM users
    GROUP BY name
- SELECT * FROM users
  JOIN ivent ON TRUE
- SELECT * FROM tabaco
  JOIN brends ON tabaco.brend_id=brends.id
- SELECT users.name, COUNT(*) FROM users
  JOIN orders ON orders.user_id=users.id
  GROUP BY users.name

