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

select dt.id, emp.name, emp.age, dt.ph_no, emp.salary
from emp_details as dt
inner join emp100 as emp
on dt.id = emp.id 

select *
from emp_details 
left join emp100 
on emp_details.id = emp100.id 


--Cross Join

select *
from emp_details 
cross join emp100 


-- Self join
create table emp102 ( e_id int,
                      name varchar(20),
                      m_id int);
insert into emp102
values (1, 'Mike',3),
       (2, 'Prahlad', 1),
       (3, 'Danish', null),
       (4, 'Suresh', 1),
       (5, 'Vidya', 1)

select * from emp102

select e.name as employee_name, 
       m.name as manager_name
from emp102 e
join emp102 m
on e.m_id = m.e_id;