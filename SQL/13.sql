USE HOMEWORk8;
CREATE TABLE student(id int ,s_id int primary key,s_name varchar(20),s_address varchar(20),s_collge_name varchar(20),
s_branch varchar(20),s_college_address varchar(20),s_course_starts timestamp,s_courese_ends timestamp,s_phone_no bigint);
CREATE TABLE USN(id int,USN_id int primary key,s_id int ,USN varchar(20),s_name varchar(20),s_collge_name varchar(20),
s_branch varchar(20),s_college_address varchar(20),s_course_starts timestamp,s_courese_ends timestamp,foreign key (s_id) references student(s_id));

SELECT * FROM student;
INSERT INTO student values(1,101,'ananya','shimoga','pesitm','cs','shimoga','2020-12-23','2024-05-31',9019520593);
INSERT INTO student values(2,102,'ananya1','shimoga1','pesitm1','is','shimoga1','2020-11-23','2024-01-31',9019520591);
INSERT INTO student values(3,103,'ananya2','shimoga2','pesitm2','ec','shimoga2','2020-10-23','2024-02-01',9019520592);
INSERT INTO student values(4,104,'ananya3','shimoga3','pesitm3','ds','shimoga3','2020-09-23','2024-03-31',9019520594);
INSERT INTO student values(5,105,'ananya4','shimoga4','pesitm4','ai','shimoga4','2020-08-23','2024-04-01',9019520595);
INSERT INTO student values(6,106,'ananya5','shimoga5','pesitm5','ml','shimoga5','2020-07-23','2024-05-31',9019520596);
INSERT INTO student values(7,107,'ananya6','shimoga6','pesitm6','mech','shimoga6','2020-06-23','2024-06-30',9019520597);
INSERT INTO student values(8,108,'ananya7','shimoga7','pesitm7','civil','shimoga7','2020-05-23','2024-07-31',9019520598);
INSERT INTO student values(9,109,'ananya8','shimoga8','pesitm8','electrical','shimoga8','2020-04-23','2024-08-30',9019520599);
INSERT INTO student values(10,110,'ananya9','shimoga9','pesitm9','cs','shimoga9','2020-03-23','2024-09-11',9019520590);
INSERT INTO student values(11,111,'ananya10','shimoga10','pesitm10','is','shimoga10','2020-02-23','2024-10-30',9019520513);
INSERT INTO student values(12,112,'ananya11','shimoga11','pesitm11','ec','shimoga1','2020-01-23','2024-11-12',9019520523);
INSERT INTO student values(13,113,'ananya12','shimoga12','pesitm12','ds','shimoga2','2020-12-23','2024-12-30',9019520533);
INSERT INTO student values(14,114,'ananya13','shimoga13','pesitm13','ai','shimoga3','2020-11-23','2024-01-13',9019520543);
INSERT INTO student values(15,115,'ananya14','shimoga14','pesitm14','ml','shimoga4','2020-09-23','2024-02-20',9019520553);
INSERT INTO student values(16,116,'ananya15','shimoga15','pesitm15','mech','shimoga5','2020-08-23','2024-03-21',9019520563);
INSERT INTO student values(17,117,'ananya16','shimoga16','pesitm16','civil','shimoga6','2020-07-23','2024-04-23',9019520573);
INSERT INTO student values(18,118,'ananya17','shimoga17','pesitm17','electrical','shimoga7','2020-06-23','2024-06-25',9019520583);
INSERT INTO student values(19,119,'ananya18','shimoga18','pesitm18','cds','shimoga8','2020-05-23','2024-07-21',9019520693);
INSERT INTO student values(20,120,'ananya19','shimoga19','pesitm19','csds','shimoga9','2020-04-23','2024-08-28',9019521593);

SELECT * FROM USN;
INSERT INTO USN values(1,201,101,'4pm20cs009','ananya','pesitm','cs','shimoga','2020-12-23','2024-05-31');
INSERT INTO USN values(2,202,102,'4pm20is009','ananya1','pesitm1','is','shimoga1','2020-11-23','2024-01-31');
INSERT INTO USN values(3,203,103,'4pm20ec009','ananya2','pesitm2','ec','shimoga2','2020-10-23','2024-02-01');
INSERT INTO USN values(4,204,104,'4pm20ds009','ananya3','pesitm3','ds','shimoga3','2020-09-23','2024-03-31');
INSERT INTO USN values(5,205,105,'4pm20ai009','ananya4','pesitm4','ai','shimoga4','2020-08-23','2024-04-01');
INSERT INTO USN values(6,206,106,'4pm20ml009','ananya5','pesitm5','ml','shimoga5','2020-07-23','2024-05-31');
INSERT INTO USN values(7,207,107,'4pm20me009','ananya6','pesitm6','mech','shimoga6','2020-06-23','2024-06-30');
INSERT INTO USN values(8,208,108,'4pm20cv009','ananya7','pesitm7','civil','shimoga7','2020-05-23','2024-07-31');
INSERT INTO USN values(9,209,109,'4pm20ee009','ananya8','pesitm8','electrical','shimoga8','2020-04-23','2024-08-30');
INSERT INTO USN values(10,210,110,'4pm20cs053','ananya9','pesitm9','cs','shimoga9','2020-03-23','2024-09-11');
INSERT INTO USN values(11,211,111,'4pm20is053','ananya10','pesitm10','is','shimoga10','2020-02-23','2024-10-30');
INSERT INTO USN values(12,212,112,'4pm20ec053','ananya11','pesitm11','ec','shimoga1','2020-01-23','2024-11-12');
INSERT INTO USN values(13,213,113,'4pm20ds053','ananya12','pesitm12','ds','shimoga2','2020-12-23','2024-12-30');
INSERT INTO USN values(14,214,114,'4pm20ai053','ananya13','pesitm13','ai','shimoga3','2020-11-23','2024-01-13');
INSERT INTO USN values(15,215,115,'4pm20ml053','ananya14','pesitm14','ml','shimoga4','2020-09-23','2024-02-20');
INSERT INTO USN values(16,216,116,'4pm20me053','ananya15','pesitm15','mech','shimoga5','2020-08-23','2024-03-21');
INSERT INTO USN values(17,217,117,'4pm20cv054','ananya16','pesitm16','civil','shimoga6','2020-07-23','2024-04-23');
INSERT INTO USN values(18,218,118,'4pm20ee053','ananya17','pesitm17','electrical','shimoga7','2020-06-23','2024-06-25');
INSERT INTO USN values(19,219,119,'4pm20cd053','ananya18','pesitm18','cds','shimoga8','2020-05-23','2024-07-21');
INSERT INTO USN values(20,220,120,'4pm20csds053','ananya19','pesitm19','csds','shimoga9','2020-04-23','2024-08-28');

select s_course_starts,
case when s_branch='cs' then s_course_starts
else null
end as scb
from student;

select s_course_starts,
case when s_branch='cs' then s_course_starts
else null
end as ucb
from USN;

select * from student limit 10;
select * from USN limit 10;

select * from student limit 5,15;
select * from USN limit 5,15;

SELECT COUNT(*) as s_name,s_branch from  student group by s_name;
SELECT COUNT(*) as s_name,s_branch from  USN group by s_name;

SELECT avg(id) as id,s_branch from student group by s_branch having id<10 ;
SELECT avg(id) as id,s_branch from USN group by s_branch having id<10;

select * from student order by id desc;
select * from USN order by id desc;

CREATE TABLE customer(id int primary key,c_name varchar(20),contact_name varchar(20),address varchar(20),city varchar(20),
postalcode int,country varchar(20),phone bigint,email varchar(20),registration_date timestamp);

CREATE TABLE orders(o_id int primary key,o_date timestamp,ship_name varchar(20),ship_address varchar(20),ship_city varchar(20),
ship_postalcode int,ship_country varchar(20),product_id int,quantity int,id int,foreign key(id) references customer(id));

SELECT * FROM customer;
INSERT INTO customer values(101,'ananya','prem','shimoga','shimoga',577,'india',9019520593,'anu@gmail.com','2024-08-08');
INSERT INTO customer values(102,'prem','ananya','shimoga','shimoga',577,'india',9019520591,'anu1@gmail.com','2024-09-07');
INSERT INTO customer values(103,'preethi','prem','shimoga','shimoga',577,'india',9019520592,'anu2@gmail.com','2024-07-06');
INSERT INTO customer values(104,'prathap','ananya','shimoga','shimoga',577,'india',9019520594,'anu3@gmail.com','2024-01-06');
INSERT INTO customer values(105,'pappa','prem','shimoga','shimoga',577,'india',9019520595,'anu4@gmail.com','2024-02-02');
INSERT INTO customer values(106,'amma','ananya','shimoga','shimoga',577,'india',9019520596,'anu5@gmail.com','2024-03-04');
INSERT INTO customer values(107,'anu','prem','shimoga','shimoga',577,'india',9019520597,'anu6@gmail.com','2024-04-01');
INSERT INTO customer values(108,'pradeep','ananya','shimoga','shimoga',577,'india',9019520598,'anu7@gmail.com','2024-05-05');
INSERT INTO customer values(109,'nikitha','prem','shimoga','shimoga',577,'india',9019520599,'anu8@gmail.com','2024-06-06');
INSERT INTO customer values(110,'naksha','ananya','shimoga','shimoga',577,'india',9019520590,'anu9@gmail.com','2024-08-01');
INSERT INTO customer values(111,'maayra','prem','shimoga','shimoga',577,'india',9019520513,'anu@gmail.com','2024-08-02');
INSERT INTO customer values(112,'sanvi','ananya','shimoga','shimoga',577,'india',9019520523,'anu1@gmail.com','2024-08-03');
INSERT INTO customer values(113,'sanav','prem','shimoga','shimoga',577,'india',9019520533,'anu2@gmail.com','2024-08-04');
INSERT INTO customer values(114,'deepa','ananya','shimoga','shimoga',577,'india',9019520543,'anu3@gmail.com','2024-08-05');
INSERT INTO customer values(115,'madhu','prem','shimoga','shimoga',577,'india',9019520553,'anu4@gmail.com','2024-08-06');
INSERT INTO customer values(116,'manikya','ananya','shimoga','shimoga',577,'india',9019520563,'anu5@gmail.com','2024-08-07');
INSERT INTO customer values(117,'gagana','prem','shimoga','shimoga',577,'india',9019520573,'anu6@gmail.com','2024-08-09');
INSERT INTO customer values(118,'sinchana','ananya','shimoga','shimoga',577,'india',9019520583,'anu7@gmail.com','2024-08-20');
INSERT INTO customer values(119,'inchara','prem','shimoga','shimoga',577,'india',9019520193,'anu8@gmail.com','2024-08-30');
INSERT INTO customer values(120,'aishu','ananya','shimoga','shimoga',577,'india',9019520293,'anu9@gmail.com','2024-08-28');

SELECT * FROM orders;
INSERT INTO orders values(201,'2024-01-01','ananya','shimoga','shimoga',577,'india',301,1,101);
INSERT INTO orders values(202,'2024-02-01','ananya','shimoga','shimoga',577,'india',302,1,102);
INSERT INTO orders values(203,'2024-03-01','ananya','shimoga','shimoga',577,'india',303,1,103);
INSERT INTO orders values(204,'2024-04-01','ananya','shimoga','shimoga',577,'india',304,1,104);
INSERT INTO orders values(205,'2024-05-01','ananya','shimoga','shimoga',577,'india',305,1,101);
INSERT INTO orders values(206,'2024-06-01','ananya','shimoga','shimoga',577,'india',306,1,105);
INSERT INTO orders values(207,'2024-07-01','ananya','shimoga','shimoga',577,'india',307,1,106);
INSERT INTO orders values(208,'2024-08-01','ananya','shimoga','shimoga',577,'india',308,1,107);
INSERT INTO orders values(209,'2024-09-01','ananya','shimoga','shimoga',577,'india',309,1,108);
INSERT INTO orders values(210,'2024-10-01','ananya','shimoga','shimoga',577,'india',310,1,101);
INSERT INTO orders values(211,'2024-11-01','ananya','shimoga','shimoga',577,'india',311,1,109);
INSERT INTO orders values(212,'2024-12-01','ananya','shimoga','shimoga',577,'india',312,1,101);
INSERT INTO orders values(213,'2024-01-03','ananya','shimoga','shimoga',577,'india',313,1,111);
INSERT INTO orders values(214,'2024-02-04','ananya','shimoga','shimoga',577,'india',314,1,112);
INSERT INTO orders values(215,'2024-03-05','ananya','shimoga','shimoga',577,'india',315,1,113);
INSERT INTO orders values(216,'2024-04-06','ananya','shimoga','shimoga',577,'india',316,1,114);
INSERT INTO orders values(217,'2024-05-07','ananya','shimoga','shimoga',577,'india',317,1,101);
INSERT INTO orders values(218,'2024-06-08','ananya','shimoga','shimoga',577,'india',318,1,115);
INSERT INTO orders values(219,'2024-07-09','ananya','shimoga','shimoga',577,'india',319,1,116);
INSERT INTO orders values(220,'2024-08-10','ananya','shimoga','shimoga',577,'india',320,1,101);

select phone,
case when contact_name='ananya' then phone
else null
end as cpc
from customer;

select product_id,
case when id='101' then product_id
else null
end as pio
from orders;

select * from customer limit 10;
select * from orders limit 10;

select * from customer limit 5,15;
select * from orders limit 5,15;

SELECT avg(id) as id,phone from customer group by phone having id<10 ;
SELECT avg(id) as id,product_id from orders group by product_id having id<10;

select * from customer order by id desc;
select * from orders order by id desc;