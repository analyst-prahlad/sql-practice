create database office;

use office;

create table off_emp1 (emp_id int primary key,                      
                      name varchar(50),
                      dept varchar(50),
                      salary decimal(10,2),
                      gender varchar(15),
                      joining_date date);

select * from off_emp1
INSERT INTO off_emp1
VALUES (1, 'Prahlad', 'HR', 60000, 'Male', '2021-01-15'),
       (2, 'Danish', 'Sales', 45000, 'Male', '2022-02-20'),
       (3, 'Rahul', 'IT', 50000, 'Male', '2023-03-10'),
       (4, 'Sneha', 'Finance', 55000, 'Female', '2024-04-05'),
       (5, 'Amit', 'HR', 48000, 'Male', '2025-05-18'),
       (6, 'Kiran', 'IT', 62000, 'Male', '2026-06-22'),
       (7, 'Pooja', 'Sales', 47000, 'Female', '2027-07-11'),
       (8, 'Arjun', 'Finance', 53000, 'Male', '2028-08-09'),
       (9, 'Meena', 'HR', 51000, 'Female', '2029-09-14'),
       (10, 'Ravi', 'IT', 60000, 'Male', '2030-10-30'),
       (11, 'Anjali', 'Sales', 46000, 'Female', '2031-11-25'),
       (12, 'Vikram', 'Finance', 70000, 'Male', '2032-12-12'),
       (13, 'Divya', 'HR', 58000, 'Female', '2033-01-19'),
       (14, 'Suresh', 'IT', 65000, 'Male', '2034-02-27'),
       (15, 'Nisha', 'Sales', 49000, 'Female', '2035-03-08');

select * from off_emp1
where name like 's%' or name like 'r%';

select * 
from off_emp1
where year(joining_date) = 2023;

select dept, avg(salary) as avg_salary 
from off_emp
where joining_date = 2023
group by dept
having avg(salary)> 50000
order by avg_salary asc

alter table off_emp
add sur_name varchar(30)

alter table off_emp 
drop column sec_name

update off_emp
set sur_name = 'Sompurkar'
where emp_id = 1

-- case

update off_emp
set sur_name=
case
      when emp_id = 2 then 'B'
      when emp_id = 3 then 'C'
      when emp_id = 4 then 'n'
      when emp_id = 11 then 'Charya'
      when emp_id = 8 then 'Chandrakantha'
      when emp_id = 3 then 'singh'
      else 'dhoni'
end
     

update off_emp
set sur_name =
case
      when emp_id = 11 then 'Charya'
      when emp_id = 8 then 'Chandrakantha'
      when emp_id = 3 then 'singh'
      else sur_name
 end  

select * 
from off_emp

update off_emp
set sur_name = 'nayk'
where name like 'p%'

exec sp_rename 'off_emp.name', 'first_name', 'column' 

execute sp_rename 'off_emp.dept', 'department', 'column'

