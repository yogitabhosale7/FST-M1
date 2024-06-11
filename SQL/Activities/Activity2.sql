REM   Script: Session 02
REM   Query_02

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders;

select order_no,order_date from orders order by order_date;

select * from orders where purchase_amount<500;

select * from orders where purchase_amount between 1000 and 2000;

select SUM(purchase_amount) as "Total Sum" from orders;

select AVG(purchase_amount) as "Average" from orders;

select MAX(purchase_amount) as "maximum" from orders;

select MIN(purchase_amount) as "Minimum" from orders;

select COUNT(disctinct salesman_id)as "Total count" from orders;

select COUNT(distinct salesman_id)as "Total count" from orders;

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

select a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commision from customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

select a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commision from customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_name;

select a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commision from customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

select a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commision from customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

select a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commision from customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_name;

SELECT a.customer_name, a.city, a.grade, b.SalesMan_name AS "Salesman", b.SALESMAN_CITY FROM customers a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

SELECT a.customer_name, a.city, a.grade, b.SalesMan_name AS "Salesman", b.SALESMAN_CITY FROM customers a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

select a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commission  
FROM customers a 
INNER JOIN salesman b ON a.salesman_id=b.salesman_id 
WHERE b.ommission>12;

select * from orders 
where salesman_id=(select distinct salesman_id from orders where customer_od=3007);

select * from orders 
where salesman_id=(select distinct salesman_id from orders where customer_id=3007);

select * from orders 
where salesman_id IN(select salesman_id from salesman where city='New York);

select * from orders 
where salesman_id IN(select salesman_id from salesman where city='New York');

SELECT grade, COUNT(*) FROM customers 
GROUP BY grade HAVING grade>(SELECT AVG(grade) FROM customers WHERE city='New York');

SELECT * FROM orders 
WHERE salesman_id IN (SELECT salesman_id FROM salesman WHERE city='New York');

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

