
SELECT status
FROM orders
GROUP BY status;


SELECT
DISTINCT status
FROM orders;


SELECT
customer_id,
COUNT(order_id )
FROM
orders
GROUP BY
customer_id
ORDER BY
customer_id;



SELECT
name,
COUNT( order_id )
FROM
orders
INNER JOIN customers
USING(customer_id)
GROUP BY
name
ORDER BY
name;



SELECT
EXTRACT(YEAR FROM order_date) YEAR,
COUNT(order_id )
FROM
orders
GROUP BY
EXTRACT(YEAR FROM order_date)
ORDER BY
YEAR;

SELECT
name,
COUNT( order_id )
FROM orders
INNER JOIN customers USING(customer_id)
WHERE
status = 'Shipped'
GROUP BY
name
ORDER BY
name;


SELECT name,  status, COUNT( order_id )
FROM orders
INNER JOIN customers USING(customer_id)
GROUP BY name, status
ORDER BY name , status;


SELECT customer_id,
status,
SUM(quantity * unit_price ) sales
FROM
orders
INNER JOIN order_items
USING (order_id )
GROUP BY
ROLLUP(
customer_id,
status
);


-- Having Clause

SELECT order_id,
    SUM( unit_price * quantity ) order_value,
    COUNT(1) Total_Items
FROM
    order_items
GROUP BY
    order_id
ORDER BY
    order_value DESC;


SELECT order_id,
    SUM( unit_price * quantity ) order_value,
    COUNT(1) Total_Items
FROM
    order_items
GROUP BY
    order_id

HAVING
    SUM( unit_price * quantity) > 1000000
ORDER BY
    order_value DESC;



SELECT order_id,
    SUM( unit_price * quantity ) order_value,
    COUNT(1) Total_Items
FROM
    order_items
GROUP BY
    order_id

HAVING
    SUM( unit_price * quantity) > 500000
AND COUNT(1) BETWEEN 10 AND 12
ORDER BY
    order_value DESC;