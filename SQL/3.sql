CREATE DATABASE HOMEWORK1;
USE HOMEWORK1;
CREATE TABLE employee_details(e_id int, e_name varchar(20),address varchar(20),e_role varchar(20),e_salary bigint);
CREATE TABLE airport_details(airport_id int, area varchar(20),airport_name varchar(20),airport_expences bigint,airport_airlanes bigint);
ALTER TABLE employee_details ADD COLUMN e_department_name varchar(20);
ALTER TABLE employee_details ADD COLUMN e_department_no int;
ALTER TABLE employee_details ADD COLUMN e_projects_working varchar(20);
ALTER TABLE employee_details ADD COLUMN e_project_no int;
ALTER TABLE employee_details ADD COLUMN e_project_domine varchar(20);
ALTER TABLE airport_details ADD COLUMN boarding_pass_section varchar(20);
ALTER TABLE airport_details ADD COLUMN boarding_pass_no int;
ALTER TABLE airport_details ADD COLUMN security_section varchar(20);
ALTER TABLE airport_details ADD COLUMN security_section_counter_no int;
ALTER TABLE airport_details ADD COLUMN boarding_pass_section varchar(20);
ALTER TABLE airport_details ADD COLUMN airlane_name varchar(20);
ALTER TABLE airport_details DROP COLUMN boarding_pass_section;
ALTER TABLE airport_details DROP COLUMN boarding_pass_no;
ALTER TABLE employee_details DROP COLUMN e_department_name;
ALTER TABLE employee_details DROP COLUMN e_department_no;
ALTER TABLE employee_details RENAME COLUMN e_id to employee_id;
ALTER TABLE employee_details RENAME COLUMN e_name to employee_name;
ALTER TABLE employee_details RENAME COLUMN address to employee_address;
ALTER TABLE employee_details RENAME COLUMN e_role to employee_role;
ALTER TABLE employee_details RENAME COLUMN e_salary to employee_salary;
ALTER TABLE airport_details RENAME COLUMN area to address;
ALTER TABLE airport_details RENAME COLUMN airport_id to airport_id_no;
ALTER TABLE airport_details RENAME COLUMN airport_expences to airport_profit;
ALTER TABLE airport_details RENAME COLUMN airport_airlanes to total_no_of_airlanes;
ALTER TABLE airport_details RENAME COLUMN security_section to new_security_section;
ALTER TABLE airport_details MODIFY COLUMN new_security_section int;
ALTER TABLE airport_details MODIFY COLUMN address int;
ALTER TABLE airport_details MODIFY COLUMN airport_id_no bigint;
ALTER TABLE airport_details MODIFY COLUMN airport_profit int;
ALTER TABLE airport_details MODIFY COLUMN total_no_of_airlanes int;
ALTER TABLE employee_details MODIFY COLUMN employee_id bigint;
ALTER TABLE employee_details MODIFY COLUMN employee_name int;
ALTER TABLE employee_details MODIFY COLUMN employee_address int;
ALTER TABLE employee_details MODIFY COLUMN employee_role int;
ALTER TABLE employee_details MODIFY COLUMN employee_salary int;
SELECT*FROM employee_details;
SELECT*FROM airport_details;
DESC airport_details;
DESC employee_details;
ALTER TABLE employee_details MODIFY COLUMN employee_name varchar(20);
ALTER TABLE employee_details MODIFY COLUMN employee_address varchar(20);
ALTER TABLE employee_details MODIFY COLUMN employee_role varchar(20);
ALTER TABLE employee_details MODIFY COLUMN e_project_no bigint;
SELECT *FROM employee_details;
INSERT INTO employee_details values(1,'Ananya','Shivamogga','DEV',50000,'Developping',1,'Java');
INSERT INTO employee_details values(2,'Anu','Shivamogga','Tester',40000,'Testing',2,'Java');
INSERT INTO employee_details values(3,'Prem','Banglore','DEV',60000,'Developping',3,'Python');
INSERT INTO employee_details values(4,'Prathap','Kormangla','TeamLeader',70000,'Design',10,'AWS');
INSERT INTO employee_details values(5,'Pradeep','Hebbal','Manager',200000,'Developping',14,'AIML');
INSERT INTO employee_details values(6,'Preethi','Shivamogga','HR',30000,'Recriting',2,'HR');
INSERT INTO employee_details values(7,'Ranjith','Shivamogga','TeamLeader',60000,'Developping',11,'EmbededSystem');
INSERT INTO employee_details values(8,'Parashuram','Shivamogga','Founder',500000,'Cultivation',20,'Agriculture');
INSERT INTO employee_details values(9,'Arathi','Shivamogga','Housewife',50000,'Cooking',19,'Cooking');
INSERT INTO employee_details values(10,'Deepa','Shivamogga','Teacher',25000,'Teaching',4,'Education');
select employee_name from employee_details where employee_id=1;
select* from employee_details where employee_address='Shivamogga';
