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

INSERT INTO products
    (name, category_id, prais)
VALUES
    ('паяльник', (SELECT id FROM categories WHERE name='electronics'), 5000),
    ('смартфон', (SELECT id FROM categories WHERE name='phones'), 2000.57),
    ('фен', (SELECT id FROM categories WHERE name='fen'), 1500.23),
    ('ноутбук', (SELECT id FROM categories WHERE name='netbook'), 20000),
    ('рено', (SELECT id FROM categories WHERE name='auto'), 157000),
    ('телефон', (SELECT id FROM categories WHERE name='phones'), 7000),
    ('макбук', (SELECT id FROM categories WHERE name='netbook'), 200000),
    ('стиралка', (SELECT id FROM categories WHERE name='electronics'), 15000),
    ('телевизор', (SELECT id FROM categories WHERE name='electronics'), 25000),
    ('мерседес', (SELECT id FROM categories WHERE name='auto'), 857000);


INSERT INTO orders
    (created_at, user_id, sum)
VALUES
    ('2024-05-30 23:05:53.499', (SELECT id FROM users WHERE name='sveta'), 250000),
    ('2024-05-30 23:05:53.499', (SELECT id FROM users WHERE name='ruslan'), 330000),
    ('2024-05-30 23:05:53.499', (SELECT id FROM users WHERE name='ilya'), 550000);

INSERT INTO order_lines
    (product_id, sum, amount, order_id)  
VALUES
    ((SELECT id FROM products WHERE name='ноутбук'), 250000, 2, (SELECT id FROM orders WHERE sum= 250000)),
    ((SELECT id FROM products WHERE name='рено'), 330000, 2, (SELECT id FROM orders WHERE sum= 330000)),
    ((SELECT id FROM products WHERE name='макбук'), 200000, 2, (SELECT id FROM orders WHERE sum= 550000));

