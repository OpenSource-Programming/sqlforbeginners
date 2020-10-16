--  One time data insert 
-- insert into branch values(4,'Buffalo',NULL,NULL);

-- Inner Joins

-- Get the manager ID and first name of each branch
select employee.emp_id,employee.first_name, branch.branch_name
from employee
join branch
on employee.emp_id = branch.mgr_id;


-- Extra Test queries  for practice

-- Get the Branch name for each client
  
select client.branch_id, client.client_name, branch.branch_name
from client
join branch
on client.branch_id = branch.branch_id;


-- Get the Branch Supplier Branch Name for each Branch Supplier
select branch_supplier.branch_id, branch_supplier.supplier_name, branch.branch_name 
from branch_supplier
join branch
on branch_supplier.branch_id = branch.branch_id;


-- LEFT join <-  Gets all of the first (left) data even if no match to second (right)

select employee.emp_id,employee.first_name, branch.branch_name
from employee
left join branch
on employee.emp_id = branch.mgr_id;

-- RIGHT join <- Gets all of the right data even if no match to left

select employee.emp_id,employee.first_name, branch.branch_name
from employee
right join branch
on employee.emp_id = branch.mgr_id;