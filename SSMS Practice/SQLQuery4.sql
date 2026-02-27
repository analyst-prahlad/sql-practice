
use company;
create table emp3 (id int,
                   name varchar(20),
                   age int,
                   dept varchar(10),
                   email varchar(30));
select * from emp3;

-- alter table 2 types
-- not null, null, change the datatype 

-- null to not null
alter table emp3 
alter column name varchar(22) not null;

--int to decimal
alter table emp3
alter column age decimal(10, 2);

--changig the length
alter table emp3
alter column email varchar(25);

-- not null to null
alter table emp3 
alter column name varchar(22) null;

alter table emp3
alter column id int not null;

-- primary key, foreign key
--check, unique, default

alter table emp3
add constraint emp3_id_pk
primary key (id);

alter table emp3
add constraint emp3_email_un
unique (email);

alter table emp3
add constraint emp3_age_ck
check (age >23);

alter table emp3
add constraint emp3_dept_df
default ('IT') for dept;