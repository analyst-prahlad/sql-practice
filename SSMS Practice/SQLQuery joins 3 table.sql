use company100;

create table emp_manager1 (id int,
                          name varchar(20));
insert into emp_manager1 
values (101, 'Vaibhavi'),
       (103, 'Raghu') 

select * from emp100 -- em100
select * from emp_details;-- emd
select * from emp_manager1--em

select em100.id, em100.name, emd.id, emd.hometown, emd.ph_no, em.id 
from emp100 as em100
inner join emp_details as emd on em100.id = emd.id
inner join emp_manager1 as em on em100.id = em.id

select em100.id, em100.name, emd.id, emd.hometown, emd.ph_no, em.id 
from emp100 as em100
left join emp_details as emd on em100.id = emd.id
left join emp_manager1 as em on em100.id = em.id

select em100.id, em100.name, emd.id, emd.hometown, emd.ph_no, em.id 
from emp100 as em100
right join emp_details as emd on em100.id = emd.id
right join emp_manager1 as em on em100.id = em.id
