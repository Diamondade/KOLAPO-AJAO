USE restaurant_db;
--- 1. View the menu_items table
SELECT * FROM menu_items;

--- 2. Find the number of the items on the menu
SELECT count(*) FROM menu_items;

--- 3. What are the least and most expensive items on the menu?
SELECT * FROM menu_items
order by price;

--- 4. How many Italian dishes are on the menu?
SELECT count(*) FROM menu_items
WHERE category='italian';

--- 5. What are the latest and most expensive italian dishes on the menu?
SELECT *
FROM menu_items
WHERE category='italian'
ORDER BY price;

--- 6. How many dishes are in each category?
SELECT category, count(menu_item_id) as num_dishes
FROM menu_items
GROUP BY category;

--- 7. What is the average dish price within each category?
SELECT category, AVG(price) as avg_price
FROM menu_items
GROUP BY category;