-- Data Cleaning


-- Checking All Tables 
SELECT * FROM pizza_types LIMIT 5;
SELECT * FROM pizza LIMIT 5;
SELECT * FROM orders LIMIT 5;
SELECT * FROM order_details LIMIT 5;


-- Null of Pizza Types
SELECT COUNT(*) as total,
    SUM(CASE WHEN name IS NULL THEN 1 ELSE 0 END) as null_name,
    SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) as null_category
FROM pizza_types;

-- Null of Pizzas
SELECT COUNT(*) as total,
    SUM(CASE WHEN price IS NULL THEN 1 ELSE 0 END) as null_price,
    SUM(CASE WHEN size IS NULL THEN 1 ELSE 0 END) as null_size
FROM pizza;

-- Null of Orders
SELECT COUNT(*) as total,
    SUM(CASE WHEN date IS NULL THEN 1 ELSE 0 END) as null_date,
    SUM(CASE WHEN time IS NULL THEN 1 ELSE 0 END) as null_time
FROM orders;

-- Null of Order Details
SELECT COUNT(*) as total,
    SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) as null_quantity,
    SUM(CASE WHEN pizza_id IS NULL THEN 1 ELSE 0 END) as null_pizza_id
FROM order_details;

-- Checking if there is any Duplicates
SELECT order_id, COUNT(*) as count
FROM orders
GROUP BY order_id
HAVING count > 1;

-- Checking if there is any Negative or Zero Values in Prices
SELECT * FROM pizza WHERE price <= 0;

-- Checking if there is any Negative or Zero Values in Quantity
SELECT * FROM order_details WHERE quantity <= 0;

