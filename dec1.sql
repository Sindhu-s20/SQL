CREATE TABLE bike(
id int,
name varchar(20),
speed varchar(20),
nopeople varchar(20),
traveltime varchar(40));

INSERT INTO bike values(1,'micale','6000','2','14-15-45');
INSERT INTO bike values(2,'sham','5000','3','15-15-45');
INSERT INTO bike values(3,'rakshi','3000','5','14-14-39');
INSERT INTO bike values(4,'vedha','20000','5','14-16-56');
INSERT INTO bike values(5,'rakul','7000','2','18-23-25');

SELECT *FROM bike;
desc bike
 LENGTH,UPPER,LOWER,Like,instr,substr,Ltrim,Rtrim,LPAD,RPAD,CONCAT,
LENGTH
SELECT speed,LENGTH(speed)  FROM bike; /*it will specify the length of the charater present in that particular coloumn */ 
SELECT speed,LENGTH(speed) as length FROM bike; /* it will change the name as the length */

UPPER
SELECT UPPER(name) from bike;  /* it will print all the character in upper case */

LOWER
SELECT LOWER(name) from bike; /* it will show the all letter in the lower case */

CONCAT
SELECT CONCAT(name,nopeople) from bike; /* it will concate two coloumn and show the output in one coloumn */

LTRIM : LEFT REMOVE it will remove the LEFT SPACE of the coloumn

SELECT LTRIM (name) from bike; /* it will remove the left space of the coloumn */

RTRIM : RIGHT REMOVE it will remove the right space
SELECT RTRIM (traveltime) from bike;


AGGREGATE FUNCTIONS 
COUNT   ,  SUM	,	MAX ,	MIN ,	AVG

SELECT * FROM BIKE;

SELECT COUNT(*) as nopeople FROM bike; /* it will count the total number of the coloumn */
SELECT COUNT(speed)  FROM bike; /* it will count the particular coloumn */

SELECT SUM(speed) from bike; /* it will count the number of total speed in the bike */
SELECT SUM(speed) from bike WHERE ID BETWEEN 1 AND 3; /* it will count only range */
SELECT SUM(speed) from bike WHERE ID >4; /* it will only count the greter value,we can also calculate lessthan value */

SELECT MAX(speed) from bike; /* IT WILL SELECT THE MAX IMUM OF THE ALL THE COLOUMN */

SELECT MIN(speed) from bike; /* IT WILL SELECT THE MINIMUN VALUE OF THE ALL THE COLOUMN */

AVG SUM OF COLOUMN/ NO OF DATA
SELECT AVG(speed) from bike; /* IT WILL ADD THE ALL THE VALUES AND GIVE SOME AVARGE VALUE */


DECIMAL:
  
  CREATE TABLE gold(id int, g_type varchar(20),cost decimal(5,2));
  SELECT * FROM gold;
  
  INSERT INTO gold values(1,'KDM', 300.50);
   INSERT INTO gold values(2,'916', 200.50);
  INSERT INTO gold values(3,'roldgold', 500.50);


ALTER TABLE gold ADD COLUMN shop varchar(20);
update gold set shop = 'Abc' where id = 1;

TCL: Transaction Control Language   
1) Commit:
2) Rollback

Rollback;

commit;

update gold set g_type = '916';

select * from gold;

drop table gold; /* enter data will be deletede it can also delete table starture , after drop commend can not be Rollback it can not be rollback again  */

  Rollback;
  
  commit;
Truncate table gold; /* it will delete the table coloumn and row and table strature remains will be same after commit then we rollback it can not be Rollback */ 
  
delete from gold where id in(1,3);
DELETE from gold; /* it can be rollback */















