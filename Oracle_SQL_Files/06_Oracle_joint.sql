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




SELECT
    first_name,
    last_name,
    order_id,
    status
FROM
   orders
RIGHT JOIN employees ON
      employee_id = salesman_id
WHERE
    job_title ='Sales Representative'
ORDER BY
      first_name,
      last_name;




SELECT
    employee_id,
    last_name,
    first_name,
    order_id,
    status
FROM
   orders
RIGHT JOIN employees ON
       employee_id = salesman_id
WHERE
    employee_id = 57;


-- Cross Join


SELECT * 
FROM warehouses; 

SELECT
     product_id,
     warehouse_id,
     ROUND(dbms_random.value(10,100)) quantity
FROM
    products
CROSS JOIN warehouses
ORDER BY product_id;

SELECT *
FROM EMPLOYEES
ORDER BY EMPLOYEE_ID


SELECT
(e. first_name || ' ' || e.last_name) employee,
(m. first_name || ' ' || m.last_name) manager,
e. job_title
FROM
employees e
LEFT JOIN employees m ON
m.employee_id = e.manager_id
ORDER BY
manager;


SELECT
e1. hire_date,
(e1.first_name || ' ' || e1.last_name) employee1,
(e2.first_name || ' ' || e2.last_name) employee2
FROM
employees e1
INNER JOIN employees e2 ON
e1.employee_id> e2.employee_id
AND e1.hire_date = e2.hire_date
ORDER BY
e1.hire_date DESC,
employee1,
employee2;
