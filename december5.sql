Constraints
1) Not null
2) Unique

CREATE TABLE hospital(
id int not null, 
h_name varchar(20) unique not null, 
loc varchar(20));

INSERT INTO hospital values(1,'Jaydeva', 'BTM');
INSERT INTO hospital values(2, 'Manipal', 'BTM');
INSERT INTO hospital values(3, 'Apollo','Jpnagar' );
select * from hospital;

ALTER TABLE hospital Modify column loc varchar(20) not null;
ALTER TABLE hospital ADD unique(loc);

CHECK:

CREATE TABLE hotel (id int not null,
 h_name varchar(20) unique, 
 owner varchar(30),
price int, check (price > 200)); 

INSERT INTO hotel values(1, 'Empire', 'Suhas', 300);
INSERT INTO hotel values(2, 'Udupi', 'Abhishek', 400);
select * from hotel;

/* importent 
not null, unique, check ---- Column level constraints.
primary key: Will not accept Null values , Duplicate values. */

CREATE TABLE  movie (
id int not null, 
m_name varchar(30),
 screen_no varchar(10),
 m_id int,
 rating int, primary key(m_id, m_name, screen_no )); /* when use not null constrains the value is store null value */
 
INSERT INTO movie values(1,'Ghost', 's1', 101, 4);
INSERT INTO movie values(2,'s1', 'ghost', 103, 3); /* order will change it will be accepect */
INSERT INTO movie values(3,'Badmanners', 9, 101, 5);
select * from movie;

composite primary key: primary key for multiple columns.
desc movie;

VIEWS
select * from movie;

UPDATE movie set rating=50 where id=1;
CREATE VIEW view_name as select *from table_name; /* SYNTAX FOR VIEW CREATION */

CREATE view movie_view as select screen_no,m_id from movie;
select * from movie_view;

TASK   

CREATE TABLE countries(
id int not null,
name varchar(20),
capital__city varchar(20) not null unique,
area bigint not null unique,
no_people bigint,
sports varchar(20),primary key(name),
check(no_people>10000));

INSERT INTO countries values(1,'Australia','canberra',7692024,25700000,'football');
INSERT INTO countries values(2,'India','Newdelhi',328700000,14500000,'Hockey');
INSERT INTO countries values(3,'pakistan','islamabad',7960950,23000000,'cricket');
INSERT INTO countries values(4,'srilankan','colombo',6700000,640000,'Volleyball');
INSERT INTO countries values(5,'brazil','brasilia',5600000,6780000,'football');
INSERT INTO countries values(6,'cambodia','Phnompenh',6989888,16600000,'volleyball');
INSERT INTO countries values(7,'chinai','Beijing',3400000,14124000,'Basketball');
INSERT INTO countries values(8,'egypt','cairo',104258,4500000,'football');
INSERT INTO countries values(9,'france','paris',65000000,4500000,'Tennis');
INSERT INTO countries values(10,'japan','Tokyo',68800000,780000,'volleyball');
select * from countries;
desc countries;

CREATE TABLE state_info(
id int not null unique,
name varchar(20) not null unique,
Capital varchar(20) not null unique,
no_districts bigint,
language varchar(30),
primary key(name),check(no_districts>20));

INSERT INTO state_info values(1,'karnataka','Bangalore',30,'kannada');
INSERT INTO state_info values(2,'Andhrapradesh','Hyderabad',25,'telugu');
INSERT INTO state_info values(3,'assam','dispur',30,'assamese');
INSERT INTO state_info values(4,'Arunachalpradesh','itanagr',40,'english');
INSERT INTO state_info values(5,'bihar','raipur',40,'hindi');
INSERT INTO state_info values(6,'goa','panaji',30,'konkani');
INSERT INTO state_info values(7,'haryana','chandigarh',30,'haryanvi');
INSERT INTO state_info values(8,'keral','trivandrum',30,'malayalam');
INSERT INTO state_info values(9,'westbengal','kolkata',39,'bengali');
INSERT INTO state_info values(10,'nagaland','kohima',30,'english');
select * from state_info;

CREATE TABLE football_info(
id int not null unique,
name varchar(20) not null unique,
no_player int not null unique,
countery varchar(20) not null,
matches int not null unique,
DOJ varchar(20) not null unique);

INSERT INTO football_info values(1,'tashan',10,'india',5,'27-03-2000');

INSERT INTO football_info values(2,'Daniel',30,'belgium',6,'28-30-22');
INSERT INTO football_info values(3,'james',20,'croatia',7,'27-03-25');
INSERT INTO football_info values(4,'david',40,'france',8,'26-04-09');
INSERT INTO football_info values(5,'matthew',25,'italy',2,'13-05-03');
INSERT INTO football_info values(6,'jach',35,'germany',9,'13-08-18');
INSERT INTO football_info values(7,'ryan',22,'ireland',12,'12-05-14');
INSERT INTO football_info values(8,'luke',28,'romania',15,'15-06-17');
INSERT INTO football_info values(9,'joseph',29,'poland',14,'21-03-12');
INSERT INTO football_info values(10,'thomas',32,'spain',13,'12-03-21');
select * from football_info;





