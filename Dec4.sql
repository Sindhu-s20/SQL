CREATE TABLE furniture(id int, f_name varchar(20), cost double,item_no int, quality varchar(20));
INSERT INTO furniture values(1,'TV',2000,001,'good');
INSERT INTO furniture values(2,'fridge',3000,002,'good');
INSERT INTO furniture values(3,'laptop',4000,003,'bad');
INSERT INTO furniture values(4,'radio',5000,004,'good');
INSERT INTO furniture values(5,'mobile',6000,005,'good');

select * from furniture;
delete from furniture where id=1;
alter table furniture order by id;

/* LPAD AND RPAD */
LPAD(STRING, LENGTH OF STRING AFTER ADDING char, char or string to be added for Given string);
SYNTAX LPAD(str,len,padstr);
SELECT LPAD('Xworkz',15,'abcd'); /* a function that helps in padding or adding a string to the left of the given string */
SELECT RPAD('BANGALORE',20,'123'); /* a function that helps in padding or adding a string to the right of the given string */

SELECT LPAD('f_name',15,'abcd')as padding from furniture;

SELECT RPAD('laptop',15,'abcd')as padding from furniture;

CREATE TABLE table_name as SELECT * FROM existing_table_name; /* syntax */
CREATE TABLE furniture_copy as SELECT * FROM furniture; /* it can be create another (copy of original table) table for exesting table */ 
select * from furniture_copy;

GROUP BY

CREATE TABLE person(id int, p_name varchar(20),gender varchar(20),sal bigint);
INSERT INTO person values(1,'karan','male',50000);
INSERT INTO person values(2,'mega','female',60000);
INSERT INTO person values(3,'ganesh','male',5000);
INSERT INTO person values(4,'suresh','male',4000);
INSERT INTO PERSON VALUES(5,'geetha','female',6000);
INSERT INTO person values(6,'gowri','female',5000);
SELECT * FROM person;

GROUP BY
SELECT gender,COUNT(*) FROM person GROUP BY gender; /* is used arrange the same data into one group */
SELECT p_name,COUNT(*) FROM person GROUP BY p_name; 

WHERE
SELECT COUNT(*) from person WHERE gender='female'; /* where can fetching filtered data,according to particular conditions applys*/

HAVING

SELECT gender,COUNT(*) AS no_of_gender from person group by gender HAVING no_of_gender > 2; /* having can only used in aggregation function 
and grouping ,which can not be used where caluse it can filter individual coloumn */

select * from airlines;

/* SELECT distinct FROM WHERE GROUP BY HAVING ORDER BY*/ 
SELECT noPilot,SUM(noSeates) as total_seates from airlines group by noPilot having total_seates > 87 ; /* it will print seates greater than 87 then values can print */

SELECT noPilot ,MAX(cost) as Max_cost from airlines group by noPilot HAVING Max_cost>4000;

SELECT noPilot ,MIN(cost) as Min_cost from airlines group by noPilot HAVING Min_cost< 6000;

SELECT avg(cost) from airlines group by noPilot having avg(cost) > 3000; 

Constraints:
1) Not null /* the Constraints can not contain the null value */
DESC airlines;
CREATE TABLE metro(id int not null, m_type varchar(20) not null, origin varchar(20), destination varchar(30), price int not null);

SELECT * FROM metro;
INSERT INTO metro values(1, 'Greenline', 'silkinstitute','Nagasandra', 50);
INSERT INTO metro values(2, 'PurpleLine', 'Kengeri','Whitefield', 50);
Constraint voilation:
DESC metro;

TASK
CREATE TABLE bus(id int ,name varchar(20),no_seates int,no_people int,status varchar(20));
INSERT INTO bus values(1,'panchalinga',40,35,'good');
INSERT INTO bus values(2,'mailaribus',60,40,'goodspeed');
INSERT INTO bus values(3,'nandileshwara',70,60,'good');
INSERT INTO bus values(4,'smst',50,40,'good');
INSERT INTO bus values(5,'kaleshwara',90,40,'good');
INSERT INTO bus values(6,'anjali',80,65,'good');
INSERT INTO bus values(7,'ambari',76,34,'good');
INSERT INTO bus values(8,'maruthibus',70,50,'good');
INSERT INTO bus values(9,'lakshmi',80,60,'good');
INSERT INTO bus values(10,'gowri',32,22,'good');
select * from bus;

SELECT no_seates,count(*) from bus group by no_seates;

select no_seates,count(*) as no_of_seates from bus group by no_seates having no_seates > 35;
select no_people,Min(no_seates) as total_no_seates from bus group by no_people having total_no_seates > 50;
select no_people,max(no_seates) as total_no_seates from bus group by no_people having total_no_seates > 60;
select no_people,sum(no_seates) as total_no_seates from bus group by no_people;
 select avg(no_seates) from bus group by no_people having(no_people) =40;

CREATE TABLE house(
id int not null,
name varchar(20) not null,
house_number varchar(60) not null,
area varchar(20) not null,
landmark varchar(20) not null);

INSERT INTO house values(001,'nandagokula','N011','btm','temple');
INSERT INTO house values(002,'brundavana','Boo1','madivala','ringroad');
INSERT INTO house values(003,'malige','M001','hsr layout','building');
INSERT INTO house values(004,'aramane','A001','madugiri','statue');
INSERT INTO house values(005,'manshon','M001','watertank','gowdown');
INSERT INTO house values(006,'pishow','P005','micolayout','libiary');
INSERT INTO house values(007,'parimala','P004','ringroad','shoroom');
INSERT INTO house values(008,'lakshmi','L003','madugiri','tshop');
INSERT INTO house values(009,'prakruthi','P003','banerugata','hospetal');
INSERT INTO house values(010,'kanmani','K002','jpnagar','station');
select * from house;




