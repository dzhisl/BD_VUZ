-- Создание таблицы "Покупатели" (customers)
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Создание таблицы "Товары" (products)
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2)
);

-- Создание таблицы "Заказы" (orders)
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


-- Заполнение таблицы "Покупатели" (customers)
INSERT INTO customers (customer_id, first_name, last_name) VALUES
(1, 'Иван', 'Иванов'),
(2, 'Петр', 'Петров'),
(3, 'Анна', 'Коршун');

-- Заполнение таблицы "Товары" (products)
INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Футболка', 20.00),
(2, 'Джинсы', 40.00),
(3, 'Кроссовки', 50.00);

-- Заполнение таблицы "Заказы" (orders)
INSERT INTO orders (order_id, customer_id, product_id, order_date) VALUES
(1, 1, 1, '2024-03-01'),
(2, 2, 2, '2024-03-05'),
(3, 3, 3, '2024-03-10');

SELECT DISTINCT p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
LEFT JOIN customers c ON o.customer_id = c.customer_id
WHERE c.last_name NOT IN ('Иванов', 'Коршун') OR c.last_name IS NULL;

SELECT DISTINCT p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
LEFT JOIN customers c ON o.customer_id = c.customer_id
WHERE c.last_name <> 'Иванов' AND c.last_name <> 'Коршун';

