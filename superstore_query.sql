SELECT * FROM ecommerce.customers;
SELECT * FROM ecommerce.orders;
SELECT * FROM ecommerce.products;



SELECT o.order_id,c.customer_name,p.product_name,o.sales
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id
JOIN products p 
ON o.product_id = p.product_id;

SELECT SUM(sales) as total_sales FROM orders;

SELECT SUM(profit) as total_profit FROM orders;

SELECT c.region,SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id
GROUP BY c.region;

SELECT p.category,SUM(o.sales) AS total_sales
FROM orders o
JOIN products p 
ON o.product_id = p.product_id
GROUP BY p.category;


SELECT p.product_name,SUM(o.sales) AS total_sales
FROM orders o
JOIN products p 
ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 10;


SELECT c.customer_name,SUM(o.sales) AS total_sales
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,SUM(sales) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;

SELECT p.category,SUM(o.profit) AS total_profit
FROM orders o
JOIN products p 
ON o.product_id = p.product_id
GROUP BY p.category;

SELECT discount,SUM(sales) AS total_sales
FROM orders
GROUP BY discount
ORDER BY discount;

Select
    o.order_id,
    o.order_date,
    c.customer_name,
    c.region,
    p.product_name,
    p.category,
    o.sales,
    o.profit
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id
JOIN products p 
ON o.product_id = p.product_id;

CREATE VIEW full_data AS
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    c.region,
    p.product_name,
    p.category,
    o.sales,
    o.profit
FROM orders o
JOIN customers c 
ON o.customer_id = c.customer_id
JOIN products p 
ON o.product_id = p.product_id;

