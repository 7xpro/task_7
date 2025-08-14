-- table details
SELECT * FROM EMPLOYEES;


-- create view 

create OR REPLACE  view testview as
select employeeid,concat(firstname," ",lastname)as fullname ,hiredate,timestampdiff(YEAR,hiredate,CURDATE()) as total_year from employees ;

-- use testview
select * from testview;

-- view wiht joins

create or replace view get_order_status as
select c.customerid,concat_ws(' ',c.firstname,c.lastname) as name,c.email,o.status from customers c 
inner join orders o on o.CUSTOMERID=c.customerid where o.status='01';

-- use get_order_status view

select * from get_order_status;

