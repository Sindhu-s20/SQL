CREATE TABLE olympic_Games
(id int, name varchar(20),team varchar(20), noOfplayers int,status varchar(30),color varchar(30),identity varchar(20),noExtraplayer int,
 preparation varchar(20), revard varchar(60));
 INSERT INTO olympic_Games values(111,'hoki','rockers',10,'good','yellow','h',2,'verywell','bike');
 SELECT * FROM olympic_Games;
  INSERT INTO olympic_Games values(112,'wali','mastermind',10,'good','yellow','h',4,'well','bike');
 INSERT INTO olympic_Games values(113,'Athletics','supiremes',2,'intermediate','pink','a',2,'fantastic','car');
 INSERT INTO olympic_Games values(114,'badminton','chakravathi',4,'good','orange','b',2,'good','tvs');
 INSERT INTO olympic_Games values(115,'boxing','challengers',4,'bad','red','b',4,'verywell','car');
 INSERT INTO olympic_Games values(116,'football','fighter',10,'intermediate','black','f',5,'fantastic','bike');
 INSERT INTO olympic_Games values(117,'basketball','rebal',4,'good','white','b',5,'good','cycle');
 INSERT INTO olympic_Games values(118,'circket','multispecial',10,'good','yellow','c',5,'verywell','cashback');
 INSERT INTO olympic_Games values(119,'handball','runner',2,'intermediate','red','h',5,'good','ball');
 INSERT INTO olympic_Games values(110,'cycling','winner',2,'bad','blue','c',5,'fantastic','bike');
 
 INSERT INTO olympic_Games values(121,'golf','loser',5,'good','black','g',2,'verywell','bike');
 INSERT INTO olympic_Games values(122,'karate','stricker',5,'bad','green','k',4,'normal','car');
 INSERT INTO olympic_Games values(123,'shoting','roking',7,'good','purpal','s',4,'verywell','car');
 INSERT INTO olympic_Games values(124,'wrestling','speider',9,'good','red','w',2,'normal','bike');
 INSERT INTO olympic_Games values(125,'climbing','chakraviewa',7,'good','pink','c',2,'verywell','bike');
 INSERT INTO olympic_Games values(126,'swimming','roring',7,'bad','orange','s',4,'normal','laptop');
 INSERT INTO olympic_Games values(127,'skipping','doubledamaka',7,'green','yellow','s',2,'verywell','bike');
 INSERT INTO olympic_Games values(128,'running','speeder',9,'bad','gray','r',4,'normal','car');
 INSERT INTO olympic_Games values(129,'motor','winner',4,'good','pink','m',4,'verywell','bike');
 INSERT INTO olympic_Games values(130,'realy','fighter',2,'bad','yellow','r',6,'verywell','bike');
 
 SELECT * FROM olympic_Games where id=125 AND status='good' AND revard='bike';
 
 SELECT * FROM olympic_Games where noOfplayers=10 OR color='yellow' OR preparation='well';
 
 SELECT *FROM olympic_Games where identity IN ('h','b'); 
 
 SELECT *FROM olympic_Games where color NOT IN ('YELLOW');
 
 SELECT * FROM olympic_Games where preparation LIKE 'n%';
 
 SELECT *FROM olympic_Games where id BETWEEN 121 AND 125;
 
  SELECT *FROM olympic_Games where id  Not BETWEEN 113 AND 118;

 
 SELECT * FROM olympic_Games order by name;
 
 SELECT DISTINCT (team) FROM olympic_Games; /* unique value can be represent  it will avoid the duplicate value */
 
 SELECT name, Instr(name,'a') FROM olympic_Games; /* it indicate number of "a" present in the name */
 
 SELECT INSTR(status,'d')as level from olympic_Games;

SELECT name as N FROM olympic_Games; /* it will change the coloumn name as N its only readability not for original table */

/* 2nd table */

CREATE TABLE airlines(
id int,
passengerName varchar(20),
cost int,
noSeates int,
starttime varchar(20),
endtime varchar(20),
pasportid int,
noPilot int,
airlineNO varchar(34),
color varchar(30));

insert into airlines values(1,'Krishna',3000,40,'14-30-30','18-30-45',1212,2,'ka1010','Blue');

insert into airlines values(2,'rama',4000,35,'15-30-22','15-78-46',3434,5,'Ba101','pink');
insert into airlines values(3,'mega',50000,45,'15-40-22','16-24-24',4646,7,'Ta100','yallow');
insert into airlines values(4,'madhu',6000,46,'18-45-22','19-34-43',5757,9,'Ma100','Black');
insert into airlines values(5,'malika',7000,47,'15-15-15','34-56-67',5858,9,'La1010','Red');
insert into airlines values(6,'radhe',8000,89,'19-16-89','34-45-45',5959,9,'Ma121','Green');
insert into airlines values(7,'reka',90000,87,'14-56-56','17-17-57',98989,8,'Ta123','white');
insert into airlines values(8,'reka',67000,67,'15-16-22','18-17-19',9797,8,'Pa121','red');
insert into airlines values(9,'gowri',97000,90,'15-67-56','19-24-26',9595,7,'78789','yellow');
insert into airlines values(10,'kalkii',6500,87,'15-18-78','17-19-89',89898,6,'La123','pink');

select *from airlines;
   desc airlines;
   SELECT * FROM airlines where cost=3000 AND noSeates=40; /*AND COMMEND */   /* */
   SELECT * FROM airlines where cost=7000 AND noSeates=46; /*AND COMMEND */ /*its run but no out put because only one condition true */

SELECT * FROM airlines where passengerName='Krishna' OR noPilot=2 OR color='Blue'; /*   OR COMMAND*/
SELECT * FROM airlines where passengerName='mega' OR noPilot=9 OR color='Red';

SELECT  * FROM airlines where id IN(1,2,3);
SELECT  * FROM airlines where id  NOT IN(8,6,4);

SELECT  * FROM airlines where id BETWEEN 1 AND 5;
SELECT  * FROM airlines where id NOT BETWEEN 4 AND 8;
 
SELECT * FROM  airlines where passengerName like 'k%';
SELECT * FROM  airlines where passengerName like 'k%h%';

SELECT * FROM  airlines order by color;

SELECT passengerName,INSTR(passengerName,'m')  from airlines;

SELECT passengerName,INSTR(passengerName,'m') as name from airlines;

SELECT passengerName,SUBSTR(passengerName,2,4) from airlines;

 SELECT passengerName,SUBSTR(passengerName,2,4) from airlines;

SELECT DISTINCT (color) FROM airlines;







 