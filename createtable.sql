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





