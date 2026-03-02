create database company100;

use company100;



alter table emp100 add gender_id int;

update emp100 set gender_id = 1 where id  in (102,104,106,110,108,112);
update emp100 set gender_id = 2 where id  in (103,105,107,109,111);

select gender_id, min(salary) as min_salary
from emp100
group by gender_id;

select dept, gender_id, max(salary) as max_salary
from emp100
where id not in (104, 107)
group by dept, gender_id
having max(salary)>50000
order by max_salary asc

--order by always should be taken aliyas name (max_salary)
--having always use aggregate functions(column name)

select * from emp100;

select name,age 






