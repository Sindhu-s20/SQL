SELECT * FROM bank_info;
select * from cust_info;
create table loan_info (id int, l_name varchar(20), loan_id int);
INSERT INTO loan_info values(1,'Homeloan', 601),(2,'Agricultureloan', 
602),(3,'Goldloan', 603),(4,'Educationloan', 604),(5,'Personalloan', 
605);


ALTER TABLE cust_info ADD COLUMN loan_id int;
ALTER TABLE bank_info ADD COLUMN loan_status varchar(10) default 'Active';

update cust_info set loan_id = 601 where id = 1;
update cust_info set loan_id = 602 where id = 2;
update cust_info set loan_id = 603 where id = 3;
update cust_info set loan_id = 604 where id = 4;

SELECT * FROM bank_info;  bank_id
select * from cust_info;  c_bank_id, loan_id
SELECT * FROM loan_info;   loan_id


SELECT b_name from bank_info where bank_id = 
(SELECT c_bank_id from cust_info where loan_id = 
(SELECT loan_id from loan_info where l_name = 'Agricultureloa'));



 
update bank_info set loan_status = 'Inactive' where bank_id = 204
(SELECT c_bank_id from cust_info where loan_id = 601
(select loan_id from loan_info where l_name = 'Homeloan'));


delete from bank_info where bank_id = 
(SELECT c_bank_id from cust_info where loan_id = 
(SELECT loan_id from loan_info where l_name = 'Goldloan'));



create table football(id int, league varchar(20), created_at timestamp,
created_by varchar(20), modified_at timestamp, modified_by varchar(20));

insert into football values(1,'EPL', now(), 'abc', now(), 'abc');
select * from football;

update football set league = 'Fifa', modified_at = now() where id = 1;

delete from student_info where course_id = 
    (SELECT c_id from course_info where c_name = 'Bootstrap');