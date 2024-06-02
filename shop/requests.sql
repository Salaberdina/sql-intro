SELECT email FROM users;

SELECT email, name FROM users;

SELECT * FROM products WHERE prais > 10000;

SELECT * FROM users WHERE id = ANY (SELECT user_id FROM orders);

SELECT * FROM products WHERE id = ANY (SELECT product_id FROM order_lines);

SELECT * FROM categories WHERE parent_id is NULL;

