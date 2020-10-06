-- Notes:
-- % = any # characters   _ is one character


--  Find any clients with LLC at the end of the name
select * from client where client_name like '%LLC';

-- Find any branch suppliers who are in the label business

select * from branch_supplier where supplier_name like '% Label%';

-- Fix the typo in the supplied data to correct spelling

update branch_supplier set supplier_name = 'Stamford Labels' where supplier_name = 'Stamford Lables';

-- Now query returns two suppliers
-- branch_id       supplier_name   supply_type
-- 2       J.T. Forms & Labels     Custom Forms
-- 3       Stamford Labels Custom Forms


-- Find any employee born in October
select * from employee where birth_day like "____-10-__";

-- +--------+------------+-----------+------------+------+--------+----------+-----------+
-- | emp_id | first_name | last_name | birth_day  | sex  | salary | super_id | branch_id |
-- +--------+------------+-----------+------------+------+--------+----------+-----------+
-- |    108 | Jim        | Halpert   | 1978-10-01 | M    |  71000 |      106 |         3 |
-- +--------+------------+-----------+------------+------+--------+----------+-----------+

-- Find any clients who are schools

select * from client where client_name like '%school%';