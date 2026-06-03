--- 1. combine the menu_items and order_details into a single table
SELECT * 
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id

--- 2. What were the least and most ordered items? what categories were they in?
SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases;

--- 3. what were the top 5 orders that spent the most money?
SELECT order_id, SUM(price) AS total_spend
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend desc
limit 5;

--- 4. View the detals of the highest spend order, what insights can you gather from the results?
SELECT category, count(order_id) as num_items
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category;

--- 5. View detalis of the top 5 highest spend order. what insights can you gather from the results
SELECT category, order_id, count(order_id) as num_items
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id, category;
