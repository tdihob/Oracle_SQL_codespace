select name
from customers;

SELECT
    customer_id,
    name,
    credit_limit
FROM
    customers;

SELECT
customer_id,
    name,
    address,
    website,
    credit_limit
FROM
    customers;

SELECT
    *   
FROM
    customers;

-----------------------------
-- Oracle Dual table
----------------------------

SELECT 
    *
FROM 
    Dual;

SELECT
    UPPER( 'This is a string')
FROM
    dual;
SELECT
    (10 + 5)/2
FROM
    dual;

-----------------------------
-- Oracle Dual table
----------------------------


SELECT
    name,
    address,
    credit_limit
FROM
    customers
ORDER BY
    name ASC;

SELECT
    name,
    address,
    credit_limit
FROM
    customers
ORDER BY
    name;


SELECT
   name,
   credit_limit
FROM
   customers
ORDER BY
2 DESC,
1;

SELECT
   country_id,
   city,
   state
FROM
   locations
   ORDER BY
      city ,
      state;
      


SELECT
   country_id ,
   city,
    state
FROM
   locations
    ORDER BY
    state
    ASC NULLS LAST;



SELECT
   first_name
FROM
   contacts
ORDER BY
    first_name;




SELECT
      product_name,
      list_price
FROM
      products
WHERE
      list_price > 500
AND category_id = 4;


SELECT
      product_name,
      list_price
From
      products
WHERE
      list_price > 500;


SELECT
      product_name
      list_price
FROM
      products
WHERE
      list_price BETWEEN 650 AND 680
ORDER BY
      list_price;     


SELECT
      product_name,
      category_id
FROM
     products
WHERE
     category_id IN(1,4)
ORDER BY
     product_name;


SELECT
      product_name,
      list_price
FROM
      products
WHERE
      product_name LIKE 'Asus%'


SELECT
     first_name,
     last_name
FROM
     employees
ORDER BY
     first_name;


SELECT
     first_name forename,
     last_namæ surnanæ
FROM
employees;




SELECT
    first_name  || ' ' || last_name AS "FUll Name"
FROM
   employees;



SELECT
     first name  || ' ' || last_name
FROM
   employees;



SELECT
  product_name,
  list_price - standard_cost AS gross_profit
FROM
    products;


SELECT
    product_name,
    list_price - standard_cost AS gross_profit
FROM
    products
ORDER BY
    gross_profit DESC;


SELECT
  e. first_name employee,
  m. first_name manager
FROM
   employees e
INNER JOIN employees m
ON
  m. employee_id = e. employee_id;