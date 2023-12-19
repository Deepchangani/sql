
use emp;
CREATE TABLE employee(
employee_id int primary key
auto_increment,
first_name varchar(20),
last_name varchar(20),
salary int not null,
joining_data datetime,
department text not null
);


CREATE TABLE incentive(
employee_ref_id int ,
incentive_date date,
incentive_amount int 
);
insert into employee(employee_id, first_name,last_name,salary,joining_data,department)values
(1,"john","Abraham","1000000","2013-1-01 12:00:00","Banking"),
(2,"micheal","clarke","800000","2013-1-01 12:00:00","Insurance"),
(3,"roy","Thomas","70000","2013-02-01 12:00:00","Banking"),
(4,"tom","jose","60000","2013-02-01 12:00:00","Insurance"),
(5,"jerry","pinto","650000","2013-02-01 12:00:00","Insurance"),
(6,"phillip","Mathew","750000","2013-01-01 12:00:00","Service"),
(7,"Testname1","123","650000","2013-01-01 12:00:00","Service"),
(8,"Testname2","Lname%","600000","2013-03-01 12:00:00","Insurance");
SELECT * from employee ;
truncate table employee;

insert into incentive(employee_ref_id,incentive_date,incentive_amount) VALUES
(1,"2013-02-01",5000 ),
(2,"2013-02-01",3000 ),
(3,"2013-02-01",4000 ),
(1,"2013-01-01",4500 ),
(2,"2013-01-01",3500 );
truncate table incentive;
SELECT * FROM incentive;


-- Q3 Get First_Name from employee table using Tom name “Employee Name”.

SELECT * from employee where first_name="tom";

-- Q4 Get FIRST_NAME, Joining Date, and Salary from employee table.

SELECT first_name,joining_data,salary from employee ;

-- Q5  Get all employee details from the employee table order by First_Name Ascending and Salary descending?

SELECT * from employee 
ORDER BY first_name asc;


SELECT * from employee 
ORDER BY salary desc;

-- Q6 Get employee details from employee table whose first name contains ‘J’.

SELECT * FROM employee where first_name like "j%";

-- Q7/8 Get department wise maximum salary from employee table order by  salaryascending?
select department,max(salary)
from employee
group by department
order by max(salary) asc;


-- Q9. Select first_name, incentive amount from employee and incentives table
-- forthose employees who have incentives and incentive amount greater than  3000

SELECT X.first_name, Y.incentive_amount 
FROM employee as X INNER JOIN incentive as Y
  ON X.employee_id=Y.employee_ref_id;





-- 10. Create After Insert trigger on Employee table which insert records in
-- viewtable




