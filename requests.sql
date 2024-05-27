SELECT * FROM users;

SELECT username FROM users;

SELECT username FROM users WHERE id>3;

SELECT users.username,rums.number FROM users 
JOIN rums_users ON users.id=rums_users.user_id
JOIN rums ON rums_users.rum_id=rums.id;

SELECT users.username FROM users 
JOIN rums_users ON users.id=rums_users.user_id
JOIN rums_phones ON rums_users.rum_id=rums_phones.rum_id
JOIN phones ON rums_phones.phone_id=phones.id
WHERE phones.number='101';