CREATE TABLE student_info(id int, s_name varchar(20), course_id int
 , primary key(course_id));
     
     INSERT INTO student_info values(1,'Deepthi', 201),(2,'Mufeeda', 202),
     (3,'Sahana',203),(4,'Shreyas', 204),(5,'Harshith', 205);
     
     SELECT * FROM student_info;
     
CREATE TABLE course_info (id int, c_name varchar(30), c_id int,
foreign key(c_id) references student_info(course_id) ON DELETE CASCADE ON UPDATE CASCADE);
  
     INSERT INTO course_info values(1,'Java', 201),(2,'sql',202),
     (3,'HTML', 203), (4,'Css', 204),(5,'Bootstrap', 205);
    
    SELECT * FROM student_info;
     SELECT * FROM course_info;
     
     UPDATE student_info SET course_id = 206 where id =1;
     
	delete from student_info where id = 3;
     
     drop table student_info;
     
     enum:
     
     CREATE TABLE coll_info(id int, c_name varchar(20),
     branch enum('CS','EC','IS'), loc varchar(20));
     
     SELECT * FROM coll_info;
     INSERT INTO coll_info values(1,'UBDT', 'EC', 'Dvg');
	INSERT INTO coll_info values(1,'UBDT', 6, 'Dvg');
JOINS:

SELECT * FROM student_info;
SELECT * FROM course_info;
     
INNER JOIN:

CREATE TABLE a(id int, a_name varchar(20));
CREATE TABLE b(id int, b_name varchar(20));
CREATE TABLE c(id int, c_name varchar(20));

INSERT INTO a values(1,'ABC'),(2,'BCD'),(3,'DEF'),(4,'EFG');
INSERT INTO B values(3,'ABC'),(5,'BCD'),(1,'DEF'),(6,'EFG');
INSERT INTO c values(8,'XYZ'),(1,'PQR'),(2,'STU'),(3,'MNO');

SELECT * FROM a;
select * from b;
select * from c;

 SELECT * FROM a INNER JOIN b ON a.id = b.id INNER JOIN 
 c on c.id = b.id INNER JOIN d on d.id = b.id;
 
 
 
 
 SELECT * FROM medicine;
 SELECT * FROM doctor;
 SELECT * FROM car;
 SELECT * FROM sportsman;
 
 SELECT m.id,m.name,d.id,d.name,c.id,c.brand, s.id, s.position FROM medicine m INNER JOIN 
 doctor d ON m.id = d.id INNER JOIN car c on c.id = m.id
 INNER JOIN sportsman s on s.id = c.id;
 
  LEFT JOIN: Will Return all records from Left table and Matching records from Right table.
  
  SELECT * FROM a LEFT JOIN b ON a.id = b.id;
  
     
 SELECT m.id,m.name,d.id,d.name,c.id,c.brand, s.id, s.position 
 FROM medicine m LEFT JOIN 
 doctor d ON m.id = d.id LEFT JOIN car c on c.id = m.id
 LEFT JOIN sportsman s on s.id = c.id;
     
 RIGHT JOIN: Will Return all records from Right table and Matching records from left table.
 
 
  SELECT * FROM a RIGHT JOIN b ON a.id = b.id;
     
 CROSS JOIN: Cartesian Product.
 
 SELECT * FROM a,b;
     
    Full Outer join
     
     LEFT join
     Right join
     
	SET OPERATORS:
    
    UNION:
    1  1
    2  5
    3  4
    4  5
    
    
    SELECT * FROM a
    union
    select * from b;
    
    union all:
      SELECT id FROM a
    union all
    select id from b;CREATE TABLE student_info(id int, s_name varchar(20), course_id int
 , primary key(course_id));
     
     INSERT INTO student_info values(1,'Deepthi', 201),(2,'Mufeeda', 202),
     (3,'Sahana',203),(4,'Shreyas', 204),(5,'Harshith', 205);
     
     SELECT * FROM student_info;
     
CREATE TABLE course_info (id int, c_name varchar(30), c_id int,
foreign key(c_id) references student_info(course_id) ON DELETE CASCADE ON UPDATE CASCADE);
  
     INSERT INTO course_info values(1,'Java', 201),(2,'sql',202),
     (3,'HTML', 203), (4,'Css', 204),(5,'Bootstrap', 205);
    
    SELECT * FROM student_info;
     SELECT * FROM course_info;
     
     UPDATE student_info SET course_id = 206 where id =1;
     
	delete from student_info where id = 3;
     
     drop table student_info;
     
     enum:
     
     CREATE TABLE coll_info(id int, c_name varchar(20),
     branch enum('CS','EC','IS'), loc varchar(20));
     
     SELECT * FROM coll_info;
     INSERT INTO coll_info values(1,'UBDT', 'EC', 'Dvg');
	INSERT INTO coll_info values(1,'UBDT', 6, 'Dvg');
JOINS:

SELECT * FROM student_info;
SELECT * FROM course_info;
     
INNER JOIN:

CREATE TABLE a(id int, a_name varchar(20));
CREATE TABLE b(id int, b_name varchar(20));
CREATE TABLE c(id int, c_name varchar(20));

INSERT INTO a values(1,'ABC'),(2,'BCD'),(3,'DEF'),(4,'EFG');
INSERT INTO B values(3,'ABC'),(5,'BCD'),(1,'DEF'),(6,'EFG');
INSERT INTO c values(8,'XYZ'),(1,'PQR'),(2,'STU'),(3,'MNO');

SELECT * FROM a;
select * from b;
select * from c;

 SELECT * FROM a INNER JOIN b ON a.id = b.id INNER JOIN 
 c on c.id = b.id INNER JOIN d on d.id = b.id;
 
 
 
 
 SELECT * FROM medicine;
 SELECT * FROM doctor;
 SELECT * FROM car;
 SELECT * FROM sportsman;
 
 SELECT m.id,m.name,d.id,d.name,c.id,c.brand, s.id, s.position FROM medicine m INNER JOIN 
 doctor d ON m.id = d.id INNER JOIN car c on c.id = m.id
 INNER JOIN sportsman s on s.id = c.id;
 
  LEFT JOIN: Will Return all records from Left table and Matching records from Right table.
  
  SELECT * FROM a LEFT JOIN b ON a.id = b.id;
  
     
 SELECT m.id,m.name,d.id,d.name,c.id,c.brand, s.id, s.position 
 FROM medicine m LEFT JOIN 
 doctor d ON m.id = d.id LEFT JOIN car c on c.id = m.id
 LEFT JOIN sportsman s on s.id = c.id;
     
 RIGHT JOIN: Will Return all records from Right table and Matching records from left table.
 
 
  SELECT * FROM a RIGHT JOIN b ON a.id = b.id;
     
 CROSS JOIN: Cartesian Product.
 
 SELECT * FROM a,b;
     
    Full Outer join
     
     LEFT join
     Right join
     
	SET OPERATORS:
    
    UNION:
    1  1
    2  5
    3  4
    4  5
    
    
    SELECT * FROM a
    union
    select * from b;
    
    union all:
      SELECT id FROM a
    union all
    select id from b;
    
    
    
    