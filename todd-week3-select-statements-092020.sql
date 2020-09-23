use company;

-- Select all employee data

select * from employee;


-- Select emplyees by salary high to low

select * from employee order by salary desc;

-- Select employees ordered by sex, and name:

select * from employee order by sex, first_name, last_name;

-- Select Employee names only
select first_name, last_name from employee;

-- Change header
select first_name as forename, last_name as surname from employee;


-- Find all the different genders

select distinct sex from employee;
