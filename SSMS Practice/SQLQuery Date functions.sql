-- Date Functions

select getdate() as Todays_date_time
select year(getdate()) --  year
select month(getdate()) --  month
select day(getdate()) -- day
select year('2024-08-25') --
select year('2025/06/20') --
select year('20/06/2025') --
select month('2025/06/20') --


-- True or False
select isdate('apple')
select isdate('2025/06/20')
select isdate('04-01-2738')
select isdate('410-362')

--DATENAME functions returns  a string
select datename(weekday, '2025-03-24') -- which day
select datename(day, '2027-09-14') -- number
select datename(month, '2027-09-14')
select datename(year, '2027-09-14')
select datename(hour, getdate()) -- hour 12
select datename(minute, getdate()) --minute 42
select datename(quarter, getdate()) -- quarter number

select datepart(weekday, getdate()) --todays date number
select datename(weekday, getdate()) -- todays date varchar day
select datepart(month, getdate())
select datename(month, getdate())
select datepart(year, getdate())
select datename(year, getdate())


select dateadd(day, 3, getdate())
select dateadd(day, 3, '2025-03-17')
select dateadd(month, 7, getdate())
select dateadd(year, 4, getdate())


