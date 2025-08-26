-- Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(od.quantity * p.price), 2) AS total_amount
FROM
    orders_details od
        JOIN
    pizzas p ON od.pizza_id = p.pizza_id;