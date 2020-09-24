root@raspberrypi:~# cat functions.sql 
-- Find the number of employees
select count(emp_id) from employee;

-- Employees with supervisor
select count(super_id) from employee;

-- Number of female employees born after 1970
select count(emp_id) from employee where sex = 'F' and birth_day > '1970-01-01';

-- Average of all employee's salarys
select avg(salary) from employee;

-- Average of all male employee's salarys
select avg(salary) from employee where sex = 'M';

-- Sum of all employee's salaries
select sum(salary) from employee;

-- How many Males and Females
select count(sex), sex from employee group by sex;

-- Total sales of each salesman

select sum(total_sales), emp_id from works_with group by emp_id;

-- How much each client spent with the branch;
select sum(total_sales), client_id from works_with group by client_id;