--create database cust1;
use cust1;
create table user2 ( id int primary key,
                     name varchar(50) not null,
                     email varchar(50) unique,
                     age int check(age>30),
                     region varchar(50) not null);
                    
select * from user2;

insert into user2 values  
                    (201, 'Subhas','622@gmail.com', 60, 'South',
                     201, 'Subhas','622@gmail.com', 60, 'South',
                     203, 'Siraj','73@gmail.com', 70, 'West',
                     205, 'Uttam','93@gmail.com', 40, 'North',
                     206, 'Sambaji','63@gmail.com', 80, 'East');



create table new5 (id int primary key identity (201,2),
                  name varchar(50),
                  age int CHECK(age>20),
                  dept varchar(50) default 'HR');
insert into new5 
          values('prahlad',36,'sales',
                 'Danish',22,'Manager', 
                 'Suresh',22,'HR'); 

select * from new5;
