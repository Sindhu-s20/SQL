select * from medicine; pk name
desc medicine;
select * from doctor;PK name fk medicine
desc doctor;
select * from car; pk brand fk ownername
desc car;
select * from sportsman; pk sport_type fk car_brand
desc sportsman;
select * from sports_equipments;
desc sports_equipments; pk equip_name fk sport_type_1

SELECT chemical_name1 from medicine where name =
(SELECT medicine from doctor where name = 
(SELECT owner_name from car where brand = 
(SELECT car_brand from sportsman where sport_type = 
(SELECT sport_type_1 from sports_equipments where manufacturer = 'Yonex'))));

FULL JOIN:

FULL OUTER JOIN:

SELECT * FROM a;
select * from b;

SELECT * FROM a LEFT JOIN b on a.id = b.id
UNION ALL
SELECT * FROM a right join b on a.id = b.id;

SELECT * FROM a;
select * from b;

SELECT DISTINCT id FROM a inner join b USING(ID);



SELECT * FROM doctor order by id;

SELECT * FROM doctor limit 5;

SELECT DISTINCT FROM WHERE GROUP BY HAVING ORDER BY.

SUB QUERIES:Inner query , Nested query

SELECT * FROM bank_info;
update bank_info set bank_id = 203 where id = 4;
SELECT * FROM cust_info;
update cust_info set c_bank_id = 203 where id = 4;


SELECT b_name from bank_info where bank_id = 
(SELECT c_bank_id from cust_info where c_name = 'Suhas');

SELECT loc from bank_info where bank_id = 
(SELECT c_bank_id from cust_info where c_name = 'Madhu');




INSERT into cust_info values(3,'Suhas', 203, 25000),(4,'Akshar',205, 45000);










CREATE TABLE park(id int, p_name varchar(20), p_id int);
CREATE TABLE visitor(id int, v_name varchar(20), park_id int);
INSERT INTO park values(1,'MaharaniPark', 301),(2,'Maharaja', 302),(3,'Cubbonpark', 303),(4,'Lalbagh', 304);
INSERT INTO visitor values(1,'Manoj', 301),(2,'Shreyas', 301),(3,'kiran', 302),(4,'Anil', 304);

SELECT * FROM park;
select * from visitor;
update visitor set v_name = 'Manoj' where park_id = 302;

SELECT p_name from park where p_id IN 
(SELECT park_id from visitor where v_name = 'Manoj');



