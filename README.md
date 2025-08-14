<h1>Overview</h1>

This script demonstrates how to:

 1. Explore table data<br>
 2. Create and use views in MySQL<br>
 3. Apply data abstraction and security principles<br>
 4. Perform joins within views for simplified queryin<br>

<h2>Table Details</h2>

    SELECT * FROM employees;

![table details](https://github.com/user-attachments/assets/7e396b10-b0a3-4526-a282-55e7a70a47ec)

<h2>Creating a Simple View</h2>

    create OR REPLACE  view testview as
    select employeeid,concat(firstname," ",lastname)as fullname ,hiredate,timestampdiff(YEAR,hiredate,CURDATE()) as total_year from employees ;


<h2>Purpose:</h2>
  1.Combines firstname and lastname into a single column fullname.<br>
  2.Calculates the total years of service for each employee.
<h2>Benefit:</h2>
  1.Hides calculation logic from the end user, providing a clean interface.

<h2>Use Testview:</h2>

    select * from testview;
    
 ![use view](https://github.com/user-attachments/assets/1683c060-b49c-403b-9aa9-699e1dac7eb5)

<h2>Creating a View with Joins:</h2>

    create or replace view get_order_status as
    select c.customerid,concat_ws(' ',c.firstname,c.lastname) as name,c.email,o.status from customers c 
    inner join orders o on o.CUSTOMERID=c.customerid where o.status='01';

<h2>Purpose:</h2>
  1.Joins customers and orders to retrieve active orders (status '01').<br>
  2.Displays only necessary customer details and their order status.
<h2>Benefit:</h2>
  1.Simplifies complex join queries.<br>
  2.Restricts data to relevant rows (security).   

![use get_order_status](https://github.com/user-attachments/assets/8fbeb80a-552e-43f5-9679-5386d7850175)



