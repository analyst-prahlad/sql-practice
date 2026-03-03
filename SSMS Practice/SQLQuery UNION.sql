create database fruits;

use fruits;

create table basket( id int,
                     name varchar(30));
insert into basket
values (1, 'Apple'),
       (2, 'Banana') 

create table basket1( id int,
                     name varchar(30));
insert into basket1
values (1, 'Pappaya'),
       (2, 'Pinnaple') 

select * from basket
union all
select * from basket1