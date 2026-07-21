
-- Zepto Sales Analysis

-- 1. Show the first 10 records from the Zepto sales dataset.
SELECT * FROM zepto_sales LIMIT 10;

-- 2. Display all unique product categories.
SELECT DISTINCT category FROM zepto_sales;

-- 3. Find products whose selling price is greater than 200.
SELECT * FROM zepto_sales WHERE selling_price > 200;

-- 4. Show all products sold in Delhi.
SELECT * FROM zepto_sales WHERE city = 'Delhi';

-- 5. Find products with discount between 10% and 30%.
SELECT * FROM zepto_sales WHERE discount_pct BETWEEN 10 AND 30;

-- 6. Display products whose brand name starts with A.
SELECT * FROM zepto_sales WHERE brand LIKE 'A%';

-- 7. Show the top 10 highest revenue products.
SELECT * FROM zepto_sales ORDER BY revenue DESC LIMIT 10;

-- 8. Count total products in each category.
SELECT category, COUNT(*) AS products
FROM zepto_sales
GROUP BY category;

-- 9. Calculate total revenue for each city.
SELECT city, SUM(revenue) AS revenue
FROM zepto_sales
GROUP BY city;

-- 10. Find average rating for each brand.
SELECT brand, AVG(rating) AS avg_rating
FROM zepto_sales
GROUP BY brand;

-- 11. Find the maximum selling price in each category.
SELECT category, MAX(selling_price) AS max_price
FROM zepto_sales
GROUP BY category;

-- 12. Find the minimum selling price in each category.
SELECT category, MIN(selling_price) AS min_price
FROM zepto_sales
GROUP BY category;

-- 13. Show cities having more than 50 orders.
SELECT city, COUNT(*) AS orders
FROM zepto_sales
GROUP BY city
HAVING COUNT(*) > 50;

-- 14. Create a rating label based on the product rating.
SELECT product_name,
CASE
WHEN rating >= 4.5 THEN 'Excellent'
WHEN rating >= 4.0 THEN 'Good'
ELSE 'Average'
END AS rating_label
FROM zepto_sales;

-- 15. Convert product names to uppercase.
SELECT product_name, UPPER(product_name) AS product_name_upper
FROM zepto_sales;

-- 16. Rank products by revenue.
SELECT product_name, revenue,
RANK() OVER (ORDER BY revenue DESC) AS rnk
FROM zepto_sales;

-- 17. Dense rank products by revenue.
SELECT product_name, revenue,
DENSE_RANK() OVER (ORDER BY revenue DESC) AS drnk
FROM zepto_sales;

-- 18. Find total revenue by category.
SELECT category, SUM(revenue) AS total_revenue
FROM zepto_sales
GROUP BY category
ORDER BY total_revenue DESC;

-- 19. Find average discount percentage by city.
SELECT city, AVG(discount_pct) AS avg_discount
FROM zepto_sales
GROUP BY city;

-- 20. Find total quantity sold by brand.
SELECT brand, SUM(quantity_sold) AS qty_sold
FROM zepto_sales
GROUP BY brand
ORDER BY qty_sold DESC;

-- 21. Find average selling price by category.
SELECT category, AVG(selling_price) AS avg_price
FROM zepto_sales
GROUP BY category;

-- 22. Find the highest order value in each city.
SELECT city, MAX(revenue) AS highest_order
FROM zepto_sales
GROUP BY city;

-- 23. Calculate total revenue for all orders.
SELECT SUM(revenue) AS grand_revenue
FROM zepto_sales;

-- 24. Find the overall average rating of products.
SELECT AVG(rating) AS overall_rating
FROM zepto_sales;



