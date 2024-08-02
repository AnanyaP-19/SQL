USE HOMEWORK8;
CREATE TABLE student_info(id int ,s_id int,s_name varchar(20),s_address varchar(20),s_school_name varchar(20),s_phone_no bigint);
CREATE TABLE library_info(id int,l_id int,book_name varchar(20),libraren_name varchar(20),n0_of_books int,book_issued_at timestamp);

SELECT * FROM student_info;

INSERT INTO student_info values(1,101,'ananya','shimoga','STMARYS',9019520593);
INSERT INTO student_info values(2,102,'prem','javalli','jnanadeepa',9019520592);
INSERT INTO student_info values(3,103,'prathap','holehonnur','rashtotana',9019520592);
INSERT INTO student_info values(4,104,'preethi','navle','kamalaneharu',9019520590);
INSERT INTO student_info values(5,105,'madhu','gadag','KLE',9019520594);
INSERT INTO student_info values(6,106,'manikya','chitradurga','Jnanabharati',9019520553);
INSERT INTO student_info values(7,107,'chintu','mudbidre','alvas',9019520596);
INSERT INTO student_info values(8,108,'aryan','konandur','excel',9019520597);
INSERT INTO student_info values(9,109,'inchara','manglore','exelent',9019520598);
INSERT INTO student_info values(10,110,'gagana','vinobnagar','sandepani',9019520599);
INSERT INTO student_info values(11,111,'manya','karkala','STMARYS',9019520513);
INSERT INTO student_info values(12,112,'nikitha','davangere','sirmv',9019520523);
INSERT INTO student_info values(13,113,'ranjith','rajajinagar','DVS',9019520533);
INSERT INTO student_info values(14,114,'naksha','hebbal','kidsinternationa',9019520543);
INSERT INTO student_info values(15,115,'maayra','indiranagar','KIDZEE',9019520553);
INSERT INTO student_info values(16,116,'sanvi','purle','podar',9019520563);
INSERT INTO student_info values(17,117,'sanav','alkola','podara',9019520573);
INSERT INTO student_info values(18,118,'chandana','honnalli','anmol',9019520893);
INSERT INTO student_info values(19,119,'sinchana','kimara','lions',9019521593);
INSERT INTO student_info values(20,120,'aishu','mallapura','srmnc',9019522593);

SELECT * FROM library_info;

INSERT INTO library_info values(1,202,'ABC','ananya',10,'2024-01-01');
INSERT INTO library_info values(2,203,'ABA','prem',11,'2024-01-01');
INSERT INTO library_info values(3,204,'ABC','prathap',20,'2024-02-01');
INSERT INTO library_info values(4,205,'ABD','preethi',30,'2024-01-01');
INSERT INTO library_info values(5,206,'ABE','pradeep',40,'2024-03-01');
INSERT INTO library_info values(6,207,'ABC','nikitha',50,'2024-01-01');
INSERT INTO library_info values(7,208,'ABG','naksha',10,'2024-01-01');
INSERT INTO library_info values(8,201,'ABH','maayra',10,'2024-04-01');
INSERT INTO library_info values(9,209,'ABI','anusha',30,'2024-01-01');
INSERT INTO library_info values(10,210,'ABJ','ranjith',10,'2024-05-01');
INSERT INTO library_info values(11,211,'ABC','kishore',40,'2024-01-01');
INSERT INTO library_info values(12,212,'ABL','madhu',10,'2024-06-01');
INSERT INTO library_info values(13,213,'ABC','manikya',10,'2024-01-01');
INSERT INTO library_info values(14,214,'ABN','inchara',10,'2024-01-01');
INSERT INTO library_info values(15,215,'ABO','gagana',50,'2024-07-01');
INSERT INTO library_info values(16,216,'ABC','sinchana',10,'2024-08-01');
INSERT INTO library_info values(17,217,'ABQ','bhoomika',10,'2024-08-01');
INSERT INTO library_info values(18,218,'ABR','amitha',60,'2024-09-01');
INSERT INTO library_info values(19,219,'ABS','anjali',10,'2024-01-01');
INSERT INTO library_info values(20,220,'ABC','kshama',70,'2024-11-01');

SELECT COUNT(*) as n0_of_books,libraren_name from  library_info group by n0_of_books;
SELECT max(n0_of_books) as max_books,libraren_name from library_info group by n0_of_books;
SELECT min(n0_of_books) as min_books,libraren_name from library_info group by n0_of_books;
SELECT avg(n0_of_books) as avg_books,libraren_name from library_info group by n0_of_books;
SELECT sum(n0_of_books) as sum_books,libraren_name from library_info group by n0_of_books;
SELECT sum(n0_of_books) as sum_books,libraren_name from library_info group by n0_of_books having sum_books>70;
SELECT avg(n0_of_books) as avg_books,libraren_name from library_info group by libraren_name having avg_books>20 ;
