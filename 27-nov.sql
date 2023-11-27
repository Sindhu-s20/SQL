CREATE DATABASE oct_27;
USE oct_27;
SHOW databases;
/*
CREATE TABLE mobilestore(id int,mobilename varchar(20),version int,is_access boolean,created_at timestamp,created_by varchar(10),modified_at timestamp,modified_by varchar(30));

SELECT * FROM mobilestore;
SELECT id,mobilename FROM mobilestore;
 
ALTER:
/* alter command used to add coloumes remove(drop) coloums from existing table*?
we can rename and change te table name
ALTER TABLE mobilestore ADD COLUMN brand varchar(30);
desc mobilestore;
ALTER TABLE mobilestore DROP COLUMN mobilename;

CREATE TABLE bank(id int,name varchar(20),noEmploye int,branch varchar(30),location varchar(30),designation varchar(30),type varchar(20),details varchar(30));
SELECT * FROM bank;
CREATE TABLE airplane(id int,width double,height double,noSeats int,name varchar(40),aravied_time int,depature_time int,station varchar(40));
SELECT * FROM airplane;
CREATE TABLE company(id int,employe_name varchar(20),place varchar(30),no_branches varchar(10),desigantion varchar(20),Company_name varchar(20),area varchar(20),status varchar(40));
SELECT * FROM company;
CREATE TABLE showroom(id int,name varchar(20),no_item int,price_item double,place varchar(20),benifit int,loss int,no_itmsale int);
SELECT * FROM showroom;
CREATE TABLE soap(id int,name varchar(20),manufacture_date int,expired_date int,quality boolean,quantity varchar(20),weight int,price int);
SELECT * FROM soap;

ALTER TABLE bank ADD COLUMN position_avaiable boolean;
ALTER TABLE bank ADD COLUMN custom_service boolean;

ALTER TABLE airplane ADD COLUMN noPeople_travale int;
ALTER TABLE airplane ADD COLUMN custmer_service boolean;

ALTER TABLE company ADD COLUMN company_type varchar(20);
ALTER TABLE company ADD COLUMN company_startdate int;

ALTER TABLE showroom ADD COLUMN customer_maintains boolean;
ALTER TABLE showroom ADD COLUMN product_details varchar(20);

ALTER TABLE soap ADD COLUMN color varchar(20);
ALTER TABLE soap ADD COLUMN status varchar(20);

// 27-nov 
 INSERT INTO bank values(111,'karnataka',1000,'bangalore','BTM','manager','fulltime','2nd main road',true,false);
 INSERT INTO bank values(112,'SBI',1010,'mysore','mainroad','assient','parttime','3rdcross',false,true);
 INSERT INTO bank values(113,'icic',900,'daravada','colone','helper','fulltime','8thcross',false,true);
 INSERT INTO bank values(114,'panjab',400,'belagavi','templeroad','assientmanager','parttime','18rdcross',false,true);
INSERT INTO bank values(115,'pragathigramena',500,'mandya','jpnagar','printer','parttime','16 main road',true,false);
INSERT INTO bank values(116,'DCB',6000,'chitradura','marketroad','manager','fullttime','18mainroada',true,false);
INSERT INTO bank values(117,'internationa',9000,'hubali','stationroad','worker','fullttime','18maincross',true,false);
INSERT INTO bank values(118,'caner',1300,'shivamoga','gandinagara','serverice','parttime','colone',true,false);
INSERT INTO bank values(119,'Rbibank',7000,'davangere','jsnagara','casher','fulltimt','mainbranch',false,false);
INSERT INTO bank values(110,'ibm',8000,'hosadurga','ringroad','officeboy','parttime','colsubbranchone',true,true);
desc bank;
SELECT * FROM bank;
desc airplane;
INSERT INTO airplane values(200,55,55,50,'alexa',7,10,'bangalore',40,true);
INSERT INTO airplane values(201,67,66,60,'Airbus',10,20,'mysore',45,false);
INSERT INTO airplane values(202,89,77,70,'Boeign',12,30,'shivamoga',55,true);
INSERT INTO airplane values(203,78,99,90,'Douglas',14,40,'deli',77,false);
INSERT INTO airplane values(204,67,87,76,'concorde',15,50,'pune',99,true);
INSERT INTO airplane values(205,78,76,94,'llyushin',16,60,'cheni',67,false);
INSERT INTO airplane values(206,77,75,75,'avro',18,70,'hydrabad',54,true);
INSERT INTO airplane values(207,90,57,76,'parachute',80,10,'mumbi',56,false);
INSERT INTO airplane values(208,90,47,77,'indigo',16,60,'chathisgada',68,true);
INSERT INTO airplane values(209,97,43,43,'spicejet',13,77,'megalaya',89,false);
desc airplane;
SELECT * FROM airplane;
ALTER TABLE company modify COLUMN no_branches int; /* changing the data type */

INSERT INTO company values(301,'rama','chitradurga','3','developer','Accenture','BTM','good','producetbase',1999);
INSERT INTO company values(302,'Krishna','davangere','7','tester','IBM','jpnagara','intermediate','servicebase',1985);
INSERT INTO company values(303,'seeta','mysore','8','codding','cisco','jaynagara','good','producetbase',1967);
INSERT INTO company values(304,'mega','mandya','9','assient','tesla','whitefield','excelent','servicebase',1978);
INSERT INTO company values(305,'madu','shivamoga','4','frondend','cognizent','ringroad','intermediate','producetbase',1989);
INSERT INTO company values(306,'monisha','chanapatna','8','developer','mindre','maleshwaram','good','servicebase',1967);
INSERT INTO company values(306,'gowri','daravada','5','backend','google','belanduru','intermediate','producetbase',1979);
INSERT INTO company values(307,'manu','hubali','8','dataanalystatic','microsoft','lalbag','good','service',1969);
INSERT INTO company values(308,'reka','belagavi','9','manager','infotech','mickolayout','excelent','producetbase',1979);
INSERT INTO company values(309,'geetha','bangalore','9','designer','u.st','maleshwaram','good','servicebase',1979);
desc company;
SELECT * FROM company;
INSERT INTO showroom values(400,'gift',40,100,'bangalore','10',100,200,true,'lowcost');
INSERT INTO showroom values(401,'paper',50,200,'Mysore','20',50,400,false,'lowcost');
INSERT INTO showroom values(402,'bike',60,400,'balari','10',60,600,true,'speedfast');
INSERT INTO showroom values(403,'car',70,700,'beedar','20',70,550,false,'speedfast');
INSERT INTO showroom values(404,'producet',90,800,'haveru','10',70,670,true,'goodquality');
INSERT INTO showroom values(405,'matieral',60,900,'chikamangalor','10',70,789,false,'good');
INSERT INTO showroom values(406,'airoplane',76,670,'godagu','40',60,876,true,'speedfast');
INSERT INTO showroom values(407,'tvs',68,865,'daravada','20',80,798,false,'goodmilage');
INSERT INTO showroom values(408,'watch',78,890,'hasana','70',100,899,true,'lowquality');
INSERT INTO showroom values(400,'jewelery',56,100,'udapi','20',100,987,false,'discount');
 desc showroom;
 SELECT * FROM showroom;
 INSERT INTO soap values(500,'santhoor',2022,2023,true,'30g',10,40,'orange','good');
 INSERT INTO soap values(501,'lux',2000,2023,false,'40g',20,50,'white','weateinwater');
 INSERT INTO soap values(502,'mysoresandel',2006,2022,true,'50g',40,70,'yellow','dry');
 INSERT INTO soap values(503,'softwash',2007,2026,false,'60g',50,70,'white','good');
 INSERT INTO soap values(504,'baby',2005,2022,true,'40g',60,80,'white','smelegood');
 INSERT INTO soap values(505,'pears',2006,2022,false,'40g',70,90,'transpernt','mostuse');
 INSERT INTO soap values(506,'dove',2026,2022,false,'60g',80,80,'white','popular');
 INSERT INTO soap values(507,'lifebuoy',2022,2024,true,'60g',10,76,'red','nice');
 INSERT INTO soap values(508,'Lush',2022,2025,true,'30g',50,90,'white','good');
 INSERT INTO soap values(509,'cinthol',2022,2026,false,'60g',50,80,'yellow','nice');
 desc soap;
SELECT * FROM soap;

ALTER TABLE soap  RENAME COLUMN name to soapname;
ALTER TABLE soap RENAME COLUMN  status  TO soapstatus;
ALTER TABLE soap RENAME COLUMN  id  TO soapid;/* change the coloumn of the table

ALTER TABLE soap modify COLUMN manufacture_date varchar(20); /*change data type of coloumn*/
ALTER TABLE soap modify COLUMN quality varchar(20);
ALTER TABLE soap modify COLUMN price double;








