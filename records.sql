INSERT INTO users (username) VALUES ('rusik'), ('sveta'), ('ilya'), ('danisik'), ('radik');

INSERT INTO rums (number) VALUES (1), (2), (3);

INSERT INTO phones (number) VALUES ('101'), ('102'), ('103');

INSERT INTO rums_phones (rum_id, phone_id) VALUES (1,1), (2,2), (3,3);

INSERT INTO rums_users 
    (rum_id, user_id)
VALUES
    (1,1), (1,2), (2,3), (2,4),(3,5);