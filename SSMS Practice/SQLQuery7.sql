--Aggregate functions
--sum, avreage, max, min, count

create database company99;
use company99;

CREATE TABLE emp99 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30),
    age INT,
    salary DECIMAL(10,2)
);

select * from emp99;

INSERT INTO emp99 (id, name, dept, age, salary) VALUES
(1, 'Rahul', 'Sales', 28, 30000),
(2, 'Anita', 'HR', 24, 25000),
(3, 'Vikram', 'Sales', 30, 40000),
(4, 'Sneha', 'IT', 26, 50000),
(5, 'Ramesh', 'IT', 23, 45000),
(6, 'Priya', 'HR', 29, 27000),
(7, 'Arjun', NULL, 32, 35000);


select dept, avg(age) as average_age
from emp99
where dept is not null
group by dept
having avg(age)>=25
order by dept desc


select * from company99;