use ecommerce_analysis ;

CREATE TABLE sales_data (
    order_id INT,
    order_date DATE,
    customer_id INT,
    customer_name VARCHAR(100),
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2),
    revenue DECIMAL(10, 2),
    region VARCHAR(50)
);


INSERT INTO sales_data VALUES 
(1, '2023-01-05', 101, 'Ravi Kumar', 201, 'iPhone 13', 'Mobiles', 1, 70000, 70000, 'South'),
(2, '2023-01-07', 102, 'Meena Reddy', 202, 'Samsung Galaxy M14', 'Mobiles', 2, 12000, 24000, 'North'),
(3, '2023-01-08', 103, 'Arjun Singh', 203, 'Boat Headphones', 'Electronics', 3, 1500, 4500, 'West'),
(4, '2023-01-10', 104, 'Kiran Rao', 204, 'HP Laptop', 'Laptops', 1, 60000, 60000, 'East'),
(5, '2023-01-12', 105, 'Priya Nair', 205, 'Dell Mouse', 'Accessories', 5, 500, 2500, 'South'),
(6, '2023-01-13', 106, 'Manoj Kumar', 206, 'Lenovo Laptop', 'Laptops', 1, 55000, 55000, 'North'),
(7, '2023-01-14', 107, 'Divya Sharma', 207, 'Canon DSLR', 'Electronics', 1, 40000, 40000, 'West'),
(8, '2023-01-15', 108, 'Sneha Rao', 208, 'Redmi Note 11', 'Mobiles', 1, 15000, 15000, 'South'),
(9, '2023-01-16', 109, 'Amit Yadav', 209, 'Samsung TV', 'Electronics', 1, 45000, 45000, 'North'),
(10, '2023-01-17', 110, 'Lakshmi Devi', 210, 'Apple Watch', 'Accessories', 2, 30000, 60000, 'East');

SELECT SUM(revenue) AS total_revenue FROM sales_data;
SELECT product_name, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 1;

SELECT region, COUNT(order_id) AS total_orders
FROM sales_data
GROUP BY region;

SELECT customer_name, SUM(revenue) AS total_spent
FROM sales_data
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 1;

SELECT category, SUM(revenue) AS total_revenue
FROM sales_data
GROUP BY category;

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(revenue) AS monthly_revenue
FROM sales_data
GROUP BY month
ORDER BY month;

