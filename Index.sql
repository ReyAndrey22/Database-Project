select * 
from employee 
where last_name = 'Putin' 
and first_name = 'Vladimir';


create idx_employee_lastname_firstname
on employee (last_name, first_name);

