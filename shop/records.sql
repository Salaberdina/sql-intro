BEGIN;
INSERT INTO users 
    (name, email, adress)
VALUES
    ('radik', 'rrr', 'aaa'),
    ('sveta', 'sss', 'vvv'),
    ('ruslan', 'rus', 'lan'),
    ('danis', 'dan', 'is'),
    ('ilya', 'iii', 'ppp');

INSERT INTO  categories
    (name, parent_id)
VALUES
    ('electronics', NULL),
    ('phones', (SELECT id FROM categories WHERE name='electronics')),
    ('fen', (SELECT id FROM categories WHERE name='electronics')),
    ('netbook', (SELECT id FROM categories WHERE name='electronics')),
    ('auto', NULL);
COMMIT;