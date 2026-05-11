SELECT
     order_id,
     customer_id,
     status,
     order_date
FROM
     orders
WHERE
     status = 'Pending'
     AND customer_id = 2
ORDER BY
     order_date;




SELECT
     order_id,
     customer_id,
     status,
     order_date
FROM
    orders
WHERE
      status = 'Shipped'
      AND salesman_id = 60
      AND EXTRACT(YEAR FROM order_date) = 2017
ORDER BY
       order_date;





SELECT
    order_id,
    customer_id,
    status,
    order_date
FROM
   orders
WHERE
   status = 'Pending'
   OR status = 'Canceled'
ORDER BY
    order_date DESC;



SELECT
    order_id,
    customer_id,
status,
   salesman_id,
   order_date
FROM
     orders
WHERE
     salesman_id IN (60, 61, 62)
ORDER BY
      order_date DESC;




SELECT
     order_id,
     customer_id,
     status,
     salesman_id,
     order_date
FROM
   orders
WHERE
(status = 'Canceled' or 
status = 'Pending')
AND customer_id = 44
ORDER BY
    order_date;



SELECT
     order_id,
     customer_id
status,
     salesman_id
FROM
   orders
WHERE
   salesman_id IN (54, 55, 56)
ORDER BY
     order_id;



SELECT
     order_id,
     customer_id,
     status,
     salesman_id
FROM
   orders
WHERE
   status IN ('Pending', 'Canceled')
ORDER BY
order_id;



SELECT
     order_id,
     customer_id,
     status ,
     salesman_id
FROM
   orders
WHERE
    status NOT IN ('Shipped', 'Canceled')
ORDER BY
order_id;


SELECT
    employee_id,
    first_name,
    last_name
FROM
   employees
WHERE
   employee_id IN(
    SELECT
        DISTINCT salesman_id
FROM
   orders
WHERE
   status = 'Canceled')
ORDER BY
   first_Name;


SELECT
    customer_id,
    name
FROM
    customers
WHERE
    customer_id NOT IN(
SELECT
    customer_id
From
orders);



SELECT
    custcner_id,
status,
    salesman_id
FROM
   orders
WHERE
   salesman_id IN( 60,
61,
62)
ORDER BY
    customer id;




SELECT
     product_name,
     standard_cost
FROM
    products
WHERE
   standard_cost BETWEEN 500 AND 600
ORDER BY
   standard_cost ;



SELECT
    product_name,
    standard_cost
FROM
   products
WHERE
   standard_cost NOT BETWEEN 500 AND 600
ORDER BY
   product_name;



SELECT
   order_id,
   customer_id,
   status,
   order_date
FROM
   orders
WHERE
   order_date BETWEEN DATE'2016-12-01' AND DATE '2016-12-31'
ORDER BY
   order_date;


SELECT
    first_name,
    last_name
    phone
FROM
   contacts
WHERE
   last_name LIKE 'St%'
ORDER BY
   last_name;


SELECT
    first_name,
    last_name,
    phone
FROM
    contacts
WHERE
    last_name LIKE '%er'
ORDER BY
    last_name;



SELECT
    first_name,
    last_name,
    email
FROM
     contacts
WHERE
    UPPER(first_name) LIKE 'CH%'
ORDER BY
    first_name;


   

SELECT * FROM orders
WHERE salesman_id = NULL
ORDER BY order_date DESC;


SELECT * FROM orders
WHERE salesman_id IS NOT NULL
ORDER BY order_date DESC;


