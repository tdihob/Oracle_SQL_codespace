SELECT * FROM palette_a;

SELECT * FROM palette_b;

SELECT
    a. id id_a,
    a. color color_a,
    b. id id_b,
    b. color color_b
FROM
palette_a a INNER JOIN palette_b b 
ON a.color = b. color;


-- Left Join

SELECT
    a. id id_a,
    a. color color_a,
    b. id id_b,
    b. color color_b
FROM
    palette_a a LEFT JOIN palette_b b 
    ON a.color = b. color;

-- Right Join

SELECT
    a. id id_a,
    a. color color_a,
    b. id id_b,
    b. color color_b
FROM
palette_a a RIGHT JOIN palette_b b 
ON a.color = b. color;


-- Full Outer Join

SELECT
    a. id id_a,
    a. color color_a,
    b. id id_b,
    b. color color_b
FROM
palette_a a FULL OUTER JOIN palette_b b 
ON a.color = b. color;





SELECT
    a. id id_a,
    a. color color_a,
    b. id id_b,
    b. color color_b
FROM
    palette_a a LEFT JOIN palette_b b 
    ON a.color = b. color
WHERE b.id IS NULL;



SELECT
    a. id id_a,
    a. color color_a,
    b. id id_b,
    b. color color_b
FROM
    palette_a a RIGHT JOIN palette_b b 
    ON a.color = b. color
WHERE b.id IS NULL;



SELECT
    a. id id_a,
    a. color color_a,
    b. id id_b,
    b. color color_b
FROM
    palette_a a FULL OUTER JOIN palette_b b 
    ON a.color = b. color
WHERE b.id IS NULL;


-- Inner Join


SELECT * FROM ORDERS WHERE ORDER_ID = 94;

SELECT * FROM order_items WHERE ORDER_ID = 94 ORDER BY ITEM_ID;

SELECT
*
FROM
    orders INNER JOIN order_items
    ON
    order_items.order_id = orders.order_id
WHERE orders.order_id = 94
ORDER BY
    order_date DESC , order_items.ITEM_ID;



SELECT
*
FROM
    orders INNER JOIN order_items
    ON
    order_items.order_id = orders.order_id
ORDER BY
    order_date DESC , order_items.ITEM_ID;



SELECT
*
FROM
    orders INNER JOIN order_items
    USING (order_id)
ORDER BY
    order_date DESC , order_items.ITEM_ID;






SELECT
   name AS customer_name,
   order_id,
   order_date,
   item_id,
   quantity,
   unit_price
FROM
   orders
INNER JOIN order_items USING(order_id)
INNER JOIN customers USING(customer_id)
ORDER BY
      order_date DESC,
      order_id DESC,
      item_id ASC;




SELECT
    name AS custcmer_name,
    order_id,
    order_date,
    item_id,
    product_name,
    quantity,
    unit_price
FROM
    orders
INNER JOIN order_items
           USING(order_id)
INNER JOIN customers
           USING(customer_id)
INNER JOIN products
           USING(product_id)
ORDER BY
order_date DESC,
order_id DESC,
item_id ASC;




SELECT
    order_id,
    name AS customer_name,
    status,
    first_name,
    last_name
FROM
    orders
LEFT JOIN employees ON
     employee_id = salesman_id
LEFT JOIN customers ON
     customers.customer_id = orders.customer_id
ORDER BY
      order_date DESC;



SELECT
     order_id,
     status,
     employee_id,
     last_name
FROM
    orders
LEFT JOIN employees ON
     employee_id = salesman_id
WHERE
    order_id = 58;