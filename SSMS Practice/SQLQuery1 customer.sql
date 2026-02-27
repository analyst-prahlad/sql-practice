use customer ;

alter table users 
add region varchar(50) ,
    mobile_number varchar(15),
    email varchar(50);

insert into users values ('Prahlad', 3, 23, 'South', '7676771699', '123@gmail.com'),
                         ('darshan', 6, 24, 'north', '1234583734', '49433@gmail.com'),
                         ('ramesh', 7, 24, 'east', '1245593989', '493@gmail.com'),
                         ('danish', 9, 24, 'west', '1289479898', '443443@gmail.com');
select * from users;

