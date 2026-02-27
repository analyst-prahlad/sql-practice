use company;

create table emp_officiall (id int primary key,
                           name varchar(20),
                           dept varchar(10),
                           salary decimal(10,2));
insert into emp_officiall
values (1,'danish', 'sales', 200000),
       (2,'ramesh', 'sales', 300000)

select * from emp_officiall

create table emp_personal (id int,
                           ph_no bigint,
                           email varchar(20));
insert into emp_personal
values (1, 1111111, '1@gmail.com')

alter table emp_personal
add constraint ep_id_fk
foreign key (id)
references emp_officiall (id)

insert into emp_personal
values (3, 33333, '3@gmail.com')