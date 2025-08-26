-- Identify the most common pizza size ordered.

SELECT 
    p.size, COUNT(od.order_details_id) AS sales_by_size
FROM
    orders_details od
        JOIN
    pizzas p ON p.pizza_id = od.pizza_id
GROUP BY p.size
ORDER BY sales_by_size DESC
LIMIT 1;