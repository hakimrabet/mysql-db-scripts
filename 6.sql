use anisamysql;
select * from customers;
###################################
desc customers;
###################################
SELECT 
    customerNumber, customerNumber, state
FROM
    customers;
###################################
SELECT DISTINCT
    state, city
FROM
    customers;
###################################
SELECT 
    lastname
FROM
    employees
ORDER BY lastname;
############################
SELECT DISTINCT
    state, city
FROM
    customers
WHERE
    state IS NOT NULL
ORDER BY state , city;
###################################
SELECT 
    state
FROM
    customers
GROUP BY state;

select * from orderdetails group by orderNumber;