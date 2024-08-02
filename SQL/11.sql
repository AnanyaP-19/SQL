USE HOMEWORK8;
CREATE TABLE employee(id int not null,e_name varchar(20) unique,e_id int primary key,e_role varchar(20) default'development',
e_salary bigint,constraint e_salary_chk check(e_salary>25000));
CREATE TABLE job(id int not null,j_id int primary key,e_id int,j_role varchar(20) default'Testing',address varchar(20) unique,
foreign key (e_id) references employee(e_id));
SELECT * FROM employee;

INSERT INTO employee values(1,'ananya',101,'development',26000);
INSERT INTO employee values(2,'prem',102,'',27000);
INSERT INTO employee values(3,'arathi',103,'development',28000);
INSERT INTO employee values(4,'parshu',104,'development',29000);
INSERT INTO employee values(5,'prathap',105,'development',36000);
INSERT INTO employee values(6,'preethi',106,'development',46000);
INSERT INTO employee values(7,'ranjith',107,'development',56000);
INSERT INTO employee values(8,'pradeep',108,'development',66000);
INSERT INTO employee values(9,'madhu',109,'development',76000);
INSERT INTO employee values(10,'manikya',110,'development',86000);

SELECT * FROM job;
INSERT INTO job values(1,201,101,'Testing','Shivamogga');
INSERT INTO job values(2,202,102,'Testing','Bengaluru');
INSERT INTO job values(3,203,103,'Testing','Mysuru');
INSERT INTO job values(4,204,104,'Testing','Hubli');
INSERT INTO job values(5,205,105,'Testing','Dharwad');
INSERT INTO job values(6,206,106,'Testing','Belgam');
INSERT INTO job values(7,207,107,'Testing','Mandya');
INSERT INTO job values(8,208,108,'Testing','Honnavar');
INSERT INTO job values(9,209,109,'Testing','Job');
INSERT INTO job values(10,210,110,'Testing','Udupi');

SELECT * FROM employee where id between 5 and 10;
SELECT * FROM job where id between 5 and 10;

SELECT * FROM employee where e_name like 'p%';
SELECT * FROM job where address like 'M%';

SELECT * FROM employee order by e_name desc;
SELECT * FROM job order by address desc;

SELECT LOWER(e_name) as to_lower from employee;
SELECT LOWER(address) as to_lower from job;

SELECT UPPER(e_name) as to_upper from employee;
SELECT UPPER(address) as to_upper from job;

SELECT LENGTH(e_name)from employee;
SELECT LENGTH(address)from job;

SELECT CONCAT(e_name,e_salary) from employee;
SELECT CONCAT(address,id) from job;

CREATE INDEX index_e_name on employee(e_name);
CREATE INDEX index_j_role on job(j_role);

SHOW INDEXES FROM employee;
SHOW INDEXES FROM job;

explain select * from employee where e_name ='ananya';
explain select * from employee where e_name ='madhu';

explain select * from job where address ='Shivamogga';
explain select * from job where address ='Bengaluru';









