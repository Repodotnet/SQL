
create database boats
use boats
create table sailors
(
sid int primary key,
sname varchar(20),
rating int,
age int
)
create table boats
(
bid int primary key,
bname varchar(20),
color varchar(20)
)
create table reserves
(
rid int identity primary key,
sid int foreign key references sailors(sid),
bid int foreign key references boats(bid),
day1 date
)

insert into sailors values(22,'dustin',7,45)
insert into sailors values(29,'brutus',1,33)
insert into sailors values(31,'lubber',79,55)
insert into sailors values(32,'andy',8,25)
insert into sailors values(58,'rusty',10,35)
insert into sailors values(59,'buplb',10,35)
insert into sailors values(60,'buplerb',10,35)
insert into sailors values(22,'bb',10,35)




insert into boats values(101,'interlake','blue')
insert into boats values(102,'interlake','red')
insert into boats values(103,'clipper','green')
insert into boats values(104,'marine','red')

insert into reserves values(22,101,'2004-01-01')
insert into reserves values(22,102,'2004-01-01')
insert into reserves values(22,103,'2004-02-01')
insert into reserves values(31,103,'2005-05-05')
insert into reserves values(32,104,'2005-04-07')

select * from sailors
select * from boats
select * from reserves