<h1>Overview</h1>

This script demonstrates how to:

 1. Explore table data
 2. Create and use views in MySQL
 3. Apply data abstraction and security principles
 4. Perform joins within views for simplified queryin

Table Details

    SELECT * FROM employees;

![table details](https://github.com/user-attachments/assets/7e396b10-b0a3-4526-a282-55e7a70a47ec)

Creating a Simple View

    create OR REPLACE  view testview as
    select employeeid,concat(firstname," ",lastname)as fullname ,hiredate,timestampdiff(YEAR,hiredate,CURDATE()) as total_year from employees ;


Purpose:
  1.Combines firstname and lastname into a single column fullname.
  2.Calculates the total years of service for each employee.
Benefit: Hides calculation logic from the end user, providing a clean interface.

Use Testview:

    select * from testview;
    
 ![use view](https://github.com/user-attachments/assets/1683c060-b49c-403b-9aa9-699e1dac7eb5)

Creating a View with Joins:

    create or replace view get_order_status as
    select c.customerid,concat_ws(' ',c.firstname,c.lastname) as name,c.email,o.status from customers c 
    inner join orders o on o.CUSTOMERID=c.customerid where o.status='01';

Purpose:
  1.Joins customers and orders to retrieve active orders (status '01').
  2.Displays only necessary customer details and their order status.
Benefit:
  1.Simplifies complex join queries.
  2.Restricts data to relevant rows (security).   

![use get_order_status](https://github.com/user-attachments/assets/8fbeb80a-552e-43f5-9679-5386d7850175)

