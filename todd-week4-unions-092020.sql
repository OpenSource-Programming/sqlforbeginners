-- Find a list of employee and branch names


-- Note field count must match and same data type
select first_name from employee union select branch_name from branch;

select first_name as Names from employee union select branch_name from branch union select client_name from client;



-- Find a list of all clients & branch suppliers' names

select client_name as Names from client union select supplier_name from branch_supplier;


select client.client_name, client.branch_id from client  
union 
select branch_supplier.supplier_name, branch_supplier.branch_id from branch_supplier;


-- Find a list of all money spent or earned by the company

select total_sales as Money from works_with union 
select salary from employee;