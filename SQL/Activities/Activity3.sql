REM   Script: Activity9/10/11
REM   SQL Activity 

CREATE TABLE Salesman(salesman_id int,  
    salesman_name varchar(32),   
    salesman_city varchar(32),  
    commision int) 
 
Insert ALL  
   INTO Salesman Values(500, 'Pit Alex', 'London', 11)  
   INTO Salesman Values(501, 'McLyon', 'Paris', 14)  
   INTO Salesman Values(502, 'Paul Adam', 'Rome', 13)  
   INTO Salesman Values(503, 'Lauson Hen', 'San Jose', 12)  
Select 1 from DUAL;

CREATE TABLE Salesman(salesman_id int,  
    salesman_name varchar(32),   
    salesman_city varchar(32),  
    commision int);

Insert ALL  
   INTO Salesman Values(500, 'Pit Alex', 'London', 11)  
   INTO Salesman Values(501, 'McLyon', 'Paris', 14)  
   INTO Salesman Values(502, 'Paul Adam', 'Rome', 13)  
   INTO Salesman Values(503, 'Lauson Hen', 'San Jose', 12)  
Select 1 from DUAL;

Select * from customers;

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

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

Select * from customers;

eate table orders(  


    order_no int primary key, purchase_amount float, order_date date,  


    customer_id int, salesman_id int)


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

elect * from Salesman  


INNER JOIN customers  


ON Salesman.salesman_id=customers. salesman_id


Select * from Salesman  
INNER JOIN customers  
ON Salesman.salesman_id=customers. salesman_id;

SELECT a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

SELECT a.customer_name AS "Customer Name", a.city, b.name AS "Salesman" FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

Drop table Salesman;

CREATE TABLE salesman ( 
    salesman_id int, 
    salesman_name varchar2(32), 
    salesman_city varchar2(32), 
    commission int 
);

INSERT ALL 
    INTO salesman VALUES(5005, 'Pit Alex', 'London', 11) 
    INTO salesman VALUES(5006, 'McLyon', 'Paris', 14) 
    INTO salesman VALUES(5007, 'Paul Adam', 'Rome', 13) 
    INTO salesman VALUES(5003, 'Lauson Hen', 'San Jose', 12) 
SELECT 1 FROM DUAL;

Select * from Salesman  
INNER JOIN customers  
ON Salesman.salesman_id=customers. salesman_id;

Select * from customers  
LEFT OUTER JOIN salesman  
ON Salesman.salesman_id=customers. salesman_id;

Select * from customers  
LEFT OUTER JOIN salesman  
ON Salesman.salesman_id=customers. salesman_id WHERE customers.grade<300 ORDER BY customer_id;

SELECT a.customer_name, a.city, a.grade, b.name AS "Salesman", b.city FROM customers a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

SELECT a.customer_name, a.city, a.grade, b.name AS "Salesman", b.salesman_city FROM customers a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

SELECT a.customer_name, a.city, a.grade, b.salesman_name AS "Salesman", b.salesman_city FROM customers a  
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300  
ORDER BY a.customer_id;

Select * from customers  
INNER JOIN salesman  
ON Salesman.salesman_id=customers. salesman_id WHERE salesman.commission>12 ;

SELECT a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id  
WHERE b.commission>12;

SELECT a.customer_name AS "Customer Name", a.city, b.salesman_name AS "Salesman", b.commission FROM customers a  
INNER JOIN salesman b ON a.salesman_id=b.salesman_id  
WHERE b.commission>12;

Select * from customers  
INNER JOIN salesman  
ON Salesman.salesman_id=customers. salesman_id WHERE salesman.commission>12 ;

select order_no, order_date purchase_amount from orders 
INNER JOIN customers 
ON orders.salesman_id=customers.salesman_id;

select order_no, order_date, purchase_amount from orders 
INNER JOIN customers 
ON orders.salesman_id=customers.salesman_id;

select order_no, order_date, purchase_amount from orders 
INNER JOIN customers 
ON orders. customer_id=customers. customer_id;

select order_no, order_date, purchase_amount from orders 
INNER JOIN customers 
ON orders. customer_id=customers. customer_id 
INNER JOIN salesman 
ON orders.salesman_id=salesman.salesman_id;

customer and commission rate he gets for an order. 


SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name AS "Customer Name", b.grade, c.name AS "Salesman", c.commission FROM orders a  
INNER JOIN customers b ON a.customer_id=b.customer_id  
INNER JOIN salesman c ON a.salesman_id=c.salesman_id;

SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name AS "Customer Name", b.grade, c.name AS "Salesman", c.commission FROM orders a  
INNER JOIN customers b ON a.customer_id=b.customer_id  
INNER JOIN salesman c ON a.salesman_id=c.salesman_id;

ELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name AS "Customer Name", b.grade, c.salesman_name AS "Salesman", c.commission FROM orders a  


INNER JOIN customers b ON a.customer_id=b.customer_id  


INNER JOIN salesman c ON a.salesman_id=c.salesman_id;


SELECT a.order_no, a.order_date, a.purchase_amount, b.customer_name AS "Customer Name", b.grade, c.salesman_name AS "Salesman", c.commission FROM orders a  
INNER JOIN customers b ON a.customer_id=b.customer_id  
INNER JOIN salesman c ON a.salesman_id=c.salesman_id;

select order_no, order_date, purchase_amount from orders 
INNER JOIN customers 
ON orders. customer_id=customers. customer_id 
INNER JOIN salesman 
ON orders.salesman_id=salesman.salesman_id;

SELECT order_no, purchase_amount, order_date, salesman_id FROM orders 
WHERE salesman_id IN( SELECT salesman_id FROM salesman 
WHERE commission=( SELECT MAX(commission) FROM salesman));

ect * from customers 


WHERE 1<(select count(*) from orders where orders.customer_id= customer.customer_id)


select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customer.customer_id);

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id);

WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 


UNION 


WHERE 1<(select count(*) from salesman where orders.salesman_id=salesmam.salesman_id)


select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
WHERE 1<(select count(*) from salesman where orders.salesman_id=salesmam.salesman_id);

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from salesman where orders.salesman_id=salesmam.salesman_id);

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from salesman where orders.salesman_id=salesman.salesman_id);

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from salesman where orders.salesman_id=salesman.salesman_id);

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id);

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id) 
ORDER BY customer_name;

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id) 
ORDER BY customer_name;

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id);

select * from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id);

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id);

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id) 
ORDER BY customer_name;

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id) 
ORDER BY customer_id;

select customer_name from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id) 
ORDER BY customer_name;

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id) 
ORDER BY customer_name;

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select * from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id) 
ORDER BY salesman_name;

select * from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id);

UNION 


select * from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id);

select customer_name from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id);

select salesman_name from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id);

select customer_name from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select salesman_name from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id);

select customer_name from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select salesman_name from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id) 
ORDER BY salesman_name;

select customer_name from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select salesman_name from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id) 
ORDER BY customer_name;

select customer_name,customer_id  from customers 
WHERE 1<(select count(*) from orders where orders.customer_id= customers.customer_id) 
UNION 
select salesman_name,salesman_id from salesman 
WHERE 1<(select count(*) from orders where orders.salesman_id=salesman.salesman_id) 
ORDER BY customer_name;

select * from orders ORDER BY order_date;

elect MAX(purchase_amount) from orders ORDER BY order_date;


select MAX(purchase_amount) from orders ORDER BY order_date;

lect * from salesman,orders 


WHERE salesman.salesman_id=orders.salesman_id     


AND orders.purchase_amount=(select MAX(purchase_amount) from orders ORDER BY order_date);


select * from salesman,orders 
WHERE salesman.salesman_id=orders.salesman_id     
AND orders.purchase_amount=(select MAX(purchase_amount) from orders ORDER BY order_date);

select * from salesman,orders 
WHERE salesman.salesman_id=orders.salesman_id     
AND orders.purchase_amount=(select MAX(purchase_amount) from orders) ORDER BY order_date;

select * from salesman,orders 
WHERE salesman.salesman_id=orders.salesman_id     
AND orders.purchase_amount=(select MAX(purchase_amount) from orders);

select MAX(purchase_amount) from orders;

select * from salesman,orders 
WHERE salesman.salesman_id=orders.salesman_id ;

SELECT a.salesman_id, name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id;

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id;

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id;

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id;

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id;

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders);

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id;

SELECT a.salesman_id, salesman_name, order_no, purchase_amount'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no, purchase_amount 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no,'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no, b.purchase_amount 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no, purchase_amount, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

LECT a.salesman_id, salesman_name, order_no, purchase_amount, 'highest on', order_date FROM salesman a, orders b 


WHERE a.salesman_id=b.salesman_id


SELECT a.salesman_id, salesman_name, order_no, purchase_amount, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

SELECT a.salesman_id, salesman_name, order_no, purchase_amount, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id;

SELECT a.salesman_id, salesman_name, order_no, purchase_amount, 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id;

SELECT  
  salesman_id, 
  salesman_name, 
  order_no, 
  'highest on', 
  order_date 
FROM ranked_orders 
WHERE rank = 1;

SELECT a.salesman_id, salesman_name, order_no, purchase_amount , 'highest on', order_date FROM salesman a, orders b 
WHERE a.salesman_id=b.salesman_id 
AND b.purchase_amount=(SELECT MAX(purchase_amount) FROM orders c WHERE c.order_date = b.order_date);

