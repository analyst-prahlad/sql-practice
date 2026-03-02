use company100
create table emp_details(id int,
                         hometown varchar(12),
                         ph_no bigint);

insert into emp_details
values (102, 'Mysoer', 234567),
       (103, 'Belgavi', 56789),
       (104, 'Manday', 78893),
       (105, 'Mysore', 238833),
       (106, 'Chennai', 73883) 
       
drop table emp_details

select * from emp100;
select * from emp_details;

-- joins
--joinings 2 or more tables

SELECT emp100.id, emp100.name, emp100.age, emp_details.hometown
FROM emp100
full join emp_details  
ON emp100.id = emp_details.id;

select dt.id, emp.name, emp.age, dt.ph_no, emp.salary
from emp_details as dt
right join emp100 as emp
on dt.id = emp.id 

select *
from emp_details 
left join emp100 
on emp_details.id = emp100.id 
