CREATE TABLE bank_info(id int not null,
 b_name varchar(20) unique,
bank_id int, 
loc varchar(30), primary key(bank_id));

INSERT INTO bank_info values(1,'SBI', 201, 'BTM');
INSERT INTO bank_info values(2,'HDFC', 202, 'Jaynagar');
INSERT INTO bank_info values(3,'ICICI', 203, 'Jpnagar');
INSERT INTO bank_info values(4,'AXIS', 204, 'RRnagar');
INSERT INTO bank_info values(5, 'IDFC' , 205, 'Ecity');
select * from bank_info;

Foreign key:

CREATE TABLE cust_info (id int not null, 
c_name varchar(20) unique,
c_bank_id int,
balance bigint, 
foreign key(c_bank_id) references bank_info(bank_id));

SELECT * FROM bank_info;
select * from cust_info;

INSERT into cust_info values(1, 'Madhu', 201, 20000);
INSERT into cust_info values(2, 'Sindhu', 202, 30000);
INSERT into cust_info values(3,'Kiran', 201, 40000);

Update cust_info set c_bank_id = 204 where id = 1;

delete from bank_info where bank_id = 201; /* after de;ete the child commend then only delete the parent commend */

delete from cust_info where c_bank_id = 201;

SELECT * FROM bank_info;
DEFAULT
ALTER TABLE bank_info add column b_type varchar(20) default 'National'; /* default commend can be defaulty can fill the default value */

CREATE TABLE college_info (id int,
 c_name varchar(20), 
loc varchar(20), 
university varchar(10) default 'VTU');

INSERT INTO college_info values(1, 'UBDT', 'DVG', 'KU');
INSERT INTO college_info(id, c_name, loc) values(2,'ATME','Mys'); /* it will take default for the university when we not give to the value */ 

SELECT * FROM college_info;

Auto increment:

CREATE TABLE games_info( id int auto_increment primary key,
 g_name varchar(10),
g_type varchar(10));

INSERT into games_info (g_name, g_type) values('Cricket', 'Outdoor'); /* here we not specify any id but it will auto generate the id */
INSERT into games_info (g_name, g_type) values('Football', 'Outdoor');
INSERT into games_info (g_name, g_type) values('Batminton', 'Indoor');

select * from games_info;

TASK

CREATE TABLE student_info(
id int not null unique,
name varchar(20) not null unique,
Dob varchar(20),
department varchar(20) not null,
age int not null,
gender varchar(20) not null,
standard int not null unique,
fees bigint not null unique,
village varchar(20) not null unique,
sub1 varchar(20) not null,
sub2 varchar(20) not null,
sub3 varchar(20) not null,
sub4 varchar(20) not null,
sub5 varchar(20) not null,
sub1_mark int not null,
sub2_mark int not null,
sub3_mark int not null,
sub4_mark int not null,
sub5_mark int not null,
total int not null unique,
avg_mark int not null unique,
school_name varchar(20) not null unique,
f_name varchar(20) not null unique,
m_name varchar(20) not null unique,
teacher_name varchar(20) not null unique,
section varchar(20) not null unique,
inst_game varchar(20) not null unique,
availabe_scholl varchar(20) not null unique,
absent_days int not null unique,
presentdays int not null unique,
primary key(id,name,department),check(age > 20 OR fees > 100 OR total > 100 OR presentdays > 10 OR absent_days < 5));
/* what coloumn give the primary key that can not be the use the check condition */

INSERT INTO student_info values(1,'rama','12-01-2000','computer_science',10,'male',4,20000,'ramanahalli','kannada','english','hindi','maths','science',
80,70,80,60,60,350,250,'Royalschool','ramesh','ramya','meri','A','Criket','yes',60,5);
INSERT INTO student_info values(2,'mega','13-02-2020','civil',20,'female',7,40000,'maleshwram','kannada','english','hindi','maths','science',
40,80,70,76,49,40,200,'sapathamischool','madaya','meri','uma','B','tenise','no',70,10);
INSERT INTO student_info values(3,'sharma','15-08-2023','science',30,'male',8,30000,'shikaripura','kannada','english','hindi','maths','science',
70,70,70,70,70,420,300,'princeschool','shivappa','shakunthala','lela','C','football','present',50,4);
INSERT INTO student_info values(4,'kiran','18-09-2024','application_science',40,'male',90,10000,'mysore','kannada','english','hindi','maths','science',
60,60,40,90,50,300,400,'kidsschool','malappa','rukamma','mala','D','badmition','available',45,8);
INSERT INTO student_info values(5,'ravi','14-07-2022','maths',40,'male',6,9000,'sidappa','kannada','english','hindi','maths','science',
69,79,49,89,70,200,500,'chythanaschool','revappa','kamala','mari','E','volley','absent',56,11);
INSERT INTO student_info values(6,'raju','18-08-2008','electronics',38,'male',9,5000,'mandya','kannada','english','hindi','maths','science',
60,65,67,77,99,320,320,'Rastranuthana','madhu','priya','menaka','F','tenese','comming',89,3);
INSERT INTO student_info values(7,'radhe','13-07-2011','politices',40,'female',12,4500,'madhuru','kannada','english','hindi','maths','science',
49,89,76,68,89,301,290,'manischool','kariyappa','kamalamma','karan','G','writting','goining',97,13);
INSERT INTO student_info values(8,'ramya','18=08-2028','physical',60,'female',17,43000,'verapura','kannada','english','hindi','maths','science',
40,89,98,65,56,221,331,'brilient','nataraja','nagalakshimi','malika','H','skipping','sandy',65,6);
INSERT INTO student_info values(9,'rakshi','15-07-2023','maths',45,'female',16,1322,'kanakapura','kannada','english','hindi','maths','science',
86,87,85,84,93,210,310,'merischool','madhukar','nagamani','janaki','I','ring','fever',51,12);
INSERT INTO student_info values(10,'janaki','18-9-2002','social',57,'female',19,62000,'shivajinagara','kannada','english','hindi','maths','science',
76,65,65,78,69,230,243,'luckyschool','rutdrappa','renukamma','mohan','J','hoki','pre',43,89);

select * from student_info;
desc student_info;



