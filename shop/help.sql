DROP TABLE rums_users;

BEGIN;
...
COMMIT;

UPDATE order_lines SET
    sum = (amount*(SELECT prais FROM products WHERE id=order_lines.product_id));

UPDATE orders SET
    sum = (SELECT sum FROM order_lines WHERE order_id=orders.id);

UPDATE users SET
    email = 'petrenko@mail.ru' WHERE name = 'ilya';

UPDATE users SET
    name = 'Radik Bulatovich' WHERE name = 'radik';

UPDATE products SET
    prais = prais*1.05;

UPDATE products SET
    prais = prais*1.20 WHERE id = ANY (SELECT product_id FROM order_lines);

