-- Exploratory Data Analysis (EDA)

-- Total Revenue
SELECT ROUND(SUM(od.quantity * p.price), 2) as total_revenue
FROM order_details od
JOIN pizza p ON od.pizza_id = p.pizza_id;


-- Revenue of Every Month 
SELECT 
    MONTH(date) as month,
    ROUND(SUM(od.quantity * p.price), 2) as revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizza p ON od.pizza_id = p.pizza_id
GROUP BY MONTH(date)
ORDER BY revenue DESC;


-- Revenue of Every category
SELECT 
    pt.category,
    ROUND(SUM(od.quantity * p.price), 2) as revenue,
    SUM(od.quantity) as total_quantity
FROM order_details od
JOIN pizza p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY revenue DESC;


-- The Most 5 Pizzas Sold
SELECT 
    pt.name,
    SUM(od.quantity) as total_sold,
    ROUND(SUM(od.quantity * p.price), 2) as revenue
FROM order_details od
JOIN pizza p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY total_sold DESC
LIMIT 5;


-- The least 5 Pizzas Sold
SELECT 
    pt.name,
    SUM(od.quantity) as total_sold,
    ROUND(SUM(od.quantity * p.price), 2) as revenue
FROM order_details od
JOIN pizza p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY total_sold ASC
LIMIT 5;


-- Average of Order Value
SELECT 
    ROUND(SUM(od.quantity * p.price) / COUNT(DISTINCT o.order_id), 2) as avg_order_value
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN pizza p ON od.pizza_id = p.pizza_id;


-- Orders by Hours
SELECT 
    HOUR(time) as hour,
    COUNT(DISTINCT order_id) as total_orders
FROM orders
GROUP BY HOUR(time)
ORDER BY total_orders DESC
LIMIT 5;


-- Orders by Week Days
SELECT 
    DAYNAME(date) as day_name,
    COUNT(DISTINCT order_id) as total_orders
FROM orders
GROUP BY DAYNAME(date)
ORDER BY total_orders DESC;


-- Slaes according to Size
SELECT 
    p.size,
    SUM(od.quantity) as total_sold,
    ROUND(SUM(od.quantity * p.price), 2) as revenue
FROM order_details od
JOIN pizza p ON od.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY total_sold DESC;