CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product VARCHAR(50),
    quantity INT
);

INSERT INTO users (user_id, username, email) VALUES
(1, 'JohnDoe', 'johndoe@example.com'),
(2, 'JaneSmith', 'jane.smith@example.com'),
(3, 'Alice.Wonderland', 'alice@wonderland.com');

INSERT INTO orders (order_id, user_id, product, quantity) VALUES
(1, 1, 'APPLES', 2),
(2, 2, 'BANANAS', 1),
(3, 3, '123ABC', 3);

SELECT * FROM users
WHERE username REGEXP '^j' AND email REGEXP '\.com$';


SELECT * FROM orders
WHERE product REGEXP '^[A-Z]+$';


SELECT * FROM users
WHERE username REGEXP '[\s.]' AND email REGEXP '@';

SELECT * FROM orders
WHERE quantity > 1 AND product REGEXP '^[A-Za-z0-9]+$';
