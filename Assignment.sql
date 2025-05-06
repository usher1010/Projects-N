-- ASSIGNMENT 1 --
-- QUESTION 1--
use assignment;

create table Friend (
	idno numeric(10),
    fname varchar(24),
    address varchar(30),
    age numeric(10),
    giftvalue numeric(10)
    );

-- QUESTION 2--
insert into Friend values("01","Ram","Dwarka Sector","41","200");
insert into Friend values("02","Sita","Janakpuri block c","26","250");
insert into Friend values("03","Rajesh","Dwarka sector 15","23","200");
insert into Friend values("04","Ajit","Noida sector 11","35","150");
insert into Friend values("05","Rita","Noida sector 11","40","200");

-- QUESTION 3 --
select * from Friend;

-- QUESTION 4 --
select * from Friend where age>"40";
 
 -- QUESTION 5 --
 select fname, age from Friend;
 
 -- QUESTION 6 --
 select fname, age, giftvalue from Friend where age>"35";
 
 -- QUESTION 7 --
 select * from Friend where giftvalue>"200" and age>"20";

-- QUESTION 8 --
select * from Friend where giftvalue>"200" or age>"20";


-- ASSIGNMENT 2 --
use assignment; 

-- QUESTION 1 -- 
create table Employee(
	EMPID numeric(10),
    DEPT char(5),
    EMPNAME varchar(15),
    ADDRESS varchar(30),
    SALARY numeric(7)
    );
    
-- QUESTION 2 --
insert into Employee values("101","RD01","Prince","Park Way","15000");
insert into Employee values("102","RD01","Harry","Pebble Street","12000");
insert into Employee values("103","RD02","Tom ","Park Avenue","11000");
insert into Employee values("104","RD02","Susan","Model Town","10000");
insert into Employee values("105","ED01","Mark","Victor Crescent","10000");
insert into Employee values("106","AD01","Francis","Chelmsford Park","13000");
insert into Employee values("107","GR01","Robert","Downtown Cross","14000");
insert into Employee values("108","RD03","Philip","Park Avenue","15000");
insert into Employee values("109","RD03","Henry","Malibu Beach","14000");
insert into Employee values("110","AD01","Frank","St. Peters Lane","7000");

-- question 1 --
select * from Employee;

-- question 2 --
select * from Employee where DEPT="RD01";

-- question 3 --
select EMPNAME, DEPT, SALARY from Employee;

-- question 4 --
select EMPNAME, DEPT, SALARY from Employee where SALARY>"13000";

-- question 5 --
select * from Employee where ADDRESS="Park Avenue";

-- question 6 --
select EMPNAME, EMPID from Employee where SALARY="15000" and ADDRESS="Park Avenue";

-- question 7 --
select EMPNAME from Employee where DEPT="RD01";

-- question 8 --
select * from Employee where DEPT like "RD%";

-- question 9 --
select max(SALARY) from Employee;


select min(SALARY) from Employee;

-- question 10 --
select EMPNAME, DEPT from Employee where SALARY>"12000";

-- question 11 --
select * from Employee order by SALARY;

-- question 12 --
update Employee set DEPT="AD01" where EMPNAME="Susan";
-- Used set_sql_safe_updates = 0 --

-- question 13 --
select EMPNAME from Employee where DEPT="RD03" and ADDRESS="Park Avenue";

-- question 14 --
select avg(SALARY) from Employee;

-- question 15 --
select count(EMPID) from Employee;

-- question 16 --
select * from Employee where SALARY>(select avg(SALARY) from Employee);


-- ASSIGNMENT 3 --

-- QUESTION 1 --
create table FriendNew(
	IDno numeric(10) primary key,
    Fname varchar(24),
    Address varchar(30),
    Age numeric(10),
    Giftvalue numeric(10,2)
    );
    
-- QUESTION 2 --
insert into FriendNew values("01","Ram","Dwarka Sector","41","200");
insert into FriendNew values("02","Sita","Janakpuri block c","26","250.80");
insert into FriendNew values("03","Rajesh","Dwarka sector 15","23","200");
insert into FriendNew values("04","Ajit","Noida sector 11","35","150.50");
insert into FriendNew values("05","Rita","Noida sector 11","40","200");

-- QUESTION 3 --
select * from FriendNew where Fname like "R%";

-- QUESTION 4 --
insert into FriendNew values("123","Anil","Dwarka Sector 11","23","29.99");

-- QUESTION 5 --
update FriendNew set Age="28" where Fname="Sita";

-- QUESTION 6 --
delete from FriendNew where IDno="123";

-- QUESTION 7 --
update FriendNew set Giftvalue="49.99" where Age="31" or Age>"31";

-- QUESTION 8 --
alter table FriendNew add City varchar(15);

-- QUESTION 9 --
update FriendNew set City="Delhi";

-- QUESTION 10 --
select Fname, Age from FriendNew order by Fname;

-- QUESTION 11 --
select sum(Giftvalue) from FriendNew;

-- QUESTION 12 --
select avg(Age) "Average Age" from FriendNew;

-- QUESTION 13 --
select Fname, Age from FriendNew where Age=(select min(Age) from FriendNew);

-- QUESTION 14 --
select count(IDno) from FriendNew where Age> "30";

-- QUESTION 15 --
select Fname, Giftvalue from FriendNew where Giftvalue=(select max(Giftvalue) from FriendNew);

-- QUESTION 16 --
delete from FriendNew where IDno= "123";

-- QUESTION 17 --
Drop table FriendNew;

-- END OF THE ASSIGNMENT --







    




    



