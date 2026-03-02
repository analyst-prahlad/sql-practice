use company;

select * from employee;

select * from employee
where emp_name like 'a%'

select * from employee
where emp_name not like 'a%'

select * from employee
where emp_name not like '[abc]%'

select * from employee
where empid>202;

select * from employee
where doj>'2021-01-01'

select * from employee
where age in (25, 21);

select * from employee
where empid between 201 and 203;

select * from employee
where dept = null

update employee
set dept='IT'
where empid=203

update employee
set salary=60000
where empid in (202,204)

select * from employee
where dept is null

select * from employee
where dept is not;

select * from employee
where empid>202 and dept= Finance

select * from employee
where empid>202 or salary=70000

select * from employee
where empid>202 not salary=70000

--like,not like
--is,is not
--between
--and, or
--in, not in

select * from employee
where empid>202
order by emp_name 



select * from employee
order by emp_name



