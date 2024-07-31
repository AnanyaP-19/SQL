USE HOMEWORK8;
CREATE TABLE LLR_info(id int not null, LLR_id int primary key, model_id varchar(20),
user_id int,LLR_address varchar(20),user_name varchar(20),user_mobile_no bigint,
user_address varchar(20),user_confidense_level varchar(20),user_score int);
SELECT * FROM LLR_info;

CREATE TABLE LLR_test_info(id int not null,test_id int primary key, LLR_id int,model_id varchar(20),
user_id int,LLR_address varchar(20),user_name varchar(20),user_mobile_no bigint
,user_confidense_level varchar(20),user_score int, foreign key(LLR_id) references LLR_info(LLR_id));
SELECT * FROM LLR_test_info;

CREATE TABLE DRIVING_LICENCE_info(id int not null,DL_id int primary key,LLR_id int,
test_id int,user_id int,DL_provider_name varchar(20),user_name varchar(20),
user_mobile_no bigint,user_confidense_level varchar(20),user_score int, 
foreign key(LLR_id) references LLR_info(LLR_id),
foreign key(test_id) references LLR_test_info(test_id));
SELECT * FROM DRIVING_LICENCE_info;

CREATE TABLE DRIVING_LICENCE_test_info(id int not null,DL_test_id int primary key,
DL_id int,user_id int,DL_provider_name varchar(20),user_name varchar(20),
user_mobile_no bigint,user_confidense_level varchar(20),user_score int, user_remarks varchar(20),
foreign key(DL_id) references DRIVING_LICENCE_info(DL_id));
SELECT * FROM DRIVING_LICENCE_test_info;
DESC DRIVING_LICENCE_test_info;

INSERT INTO LLR_info values(1,101,'A123',501,'Shivamogga','Ananya',9019520593,'Shivamogga','High',100);
INSERT INTO LLR_info values(2,102,'B123',502,'Bengaluru','Prem',9019520591,'Bengaluru','High',100);
INSERT INTO LLR_info values(3,103,'C123',503,'Mysuru','Prathap',9019520592,'Mysuru','High',100);
INSERT INTO LLR_info values(4,104,'D123',504,'Mandya','Preethi',9019520594,'Mandya','High',100);
INSERT INTO LLR_info values(5,105,'E123',505,'Hubli','Pradeep',9019520595,'Hubli','High',100);
INSERT INTO LLR_info values(6,106,'F123',506,'Dharwad','Nikitha',9019520596,'Dharwad','High',100);
INSERT INTO LLR_info values(7,107,'G123',507,'Gadag','Ranjith',9019520597,'Gadag','High',100);
INSERT INTO LLR_info values(8,108,'H123',508,'Belgam','Kishor',9019520598,'Belgam','High',100);
INSERT INTO LLR_info values(9,109,'I123',509,'Chitradurga','Madhu',9019520599,'Chitradurga','High',100);
INSERT INTO LLR_info values(10,110,'J123',510,'Mangluru','Manikya',9019520590,'Mangluru','High',100);
INSERT INTO LLR_info values(11,111,'K123',512,'Udupi','Siri',9019520513,'Udupi','High',100);
INSERT INTO LLR_info values(12,112,'L123',513,'Kundapur','Chandana',9019520523,'Kundapur','High',100);
INSERT INTO LLR_info values(13,113,'m123',514,'Karkala','Sinchana',9019520533,'Karkala','High',100);
INSERT INTO LLR_info values(14,114,'n123',515,'Honnavar','Gagana',9019520543,'Honnavar','High',100);
INSERT INTO LLR_info values(15,115,'o123',516,'Jog','Swathi',9019520553,'Jog','High',100);
INSERT INTO LLR_info values(16,116,'p123',517,'Rona','Neha',9019520563,'Rona','High',100);
INSERT INTO LLR_info values(17,117,'q123',518,'Gulbarga','Aishu',9019520573,'Gulbarga','High',100);
INSERT INTO LLR_info values(18,118,'A123',519,'Raichur','Gowri',9019520583,'Raichur','High',100);
INSERT INTO LLR_info values(19,119,'A123',520,'Munnar','Rishika',9019520503,'Munnar','High',100);
INSERT INTO LLR_info values(20,120,'A123',501,'Rajajinagar','Shreya',9019520693,'Rajajinagar','High',100);

INSERT INTO LLR_test_info values(1,201,101,'A123',501,'Shivamogga','Ananya',9019520593,'High',100);
INSERT INTO LLR_test_info values(2,202,102,'B123',502,'Bengaluru','Prem',9019520591,'AVG',70);
INSERT INTO LLR_test_info values(3,203,103,'C123',503,'Mysuru','Prathap',9019520592,'LOW',50);
INSERT INTO LLR_test_info values(4,204,104,'D123',504,'Mandya','Preethi',9019520594,'High',100);
INSERT INTO LLR_test_info values(5,205,105,'E123',505,'Hubli','Pradeep',9019520595,'AVG',60);
INSERT INTO LLR_test_info values(6,206,106,'F123',506,'Dharwad','Nikitha',9019520596,'LOW',50);
INSERT INTO LLR_test_info values(7,207,107,'G123',507,'Gadag','Ranjith',9019520597,'High',100);
INSERT INTO LLR_test_info values(8,208,108,'H123',508,'Belgam','Kishor',9019520598,'AVG',60);
INSERT INTO LLR_test_info values(9,209,109,'I123',509,'Chitradurga','Madhu',9019520599,'LOW',50);
INSERT INTO LLR_test_info values(10,210,110,'J123',510,'Mangluru','Manikya',9019520590,'High',100);
INSERT INTO LLR_test_info values(11,211,111,'K123',512,'Udupi','Siri',9019520513,'AVg',60);
INSERT INTO LLR_test_info values(12,212,112,'L123',513,'Kundapur','Chandana',9019520523,'LOW',50);
INSERT INTO LLR_test_info values(13,213,113,'m123',514,'Karkala','Sinchana',9019520533,'High',100);
INSERT INTO LLR_test_info values(14,214,114,'n123',515,'Honnavar','Gagana',9019520543,'AVG',60);
INSERT INTO LLR_test_info values(15,215,115,'o123',516,'Jog','Swathi',9019520553,'LOW',50);
INSERT INTO LLR_test_info values(16,216,116,'p123',517,'Rona','Neha',9019520563,'High',100);
INSERT INTO LLR_test_info values(17,217,117,'q123',518,'Gulbarga','Aishu',9019520573,'AVG',60);
INSERT INTO LLR_test_info values(18,218,118,'r123',519,'Raichur','Gowri',9019520583,'LOW',50);
INSERT INTO LLR_test_info values(19,219,119,'s123',520,'Munnar','Rishika',9019520503,'High',100);
INSERT INTO LLR_test_info values(20,220,120,'t123',511,'Rajajinagar','Shreya',9019520693,'AVG',60);

INSERT INTO DRIVING_LICENCE_info values(1,301,101,201,501,'Arathi','Ananya',9019520593,'High',100);
INSERT INTO DRIVING_LICENCE_info values(2,302,102,202,502,'Parshu','Prem',9019520591,'AVG',70);
INSERT INTO DRIVING_LICENCE_info values(3,303,103,203,503,'Virat','Prathap',9019520592,'LOW',50);
INSERT INTO DRIVING_LICENCE_info values(4,304,104,204,504,'Rahul','Preethi',9019520594,'High',100);
INSERT INTO DRIVING_LICENCE_info values(5,305,105,205,505,'Yuvraj','Pradeep',9019520595,'AVG',60);
INSERT INTO DRIVING_LICENCE_info values(6,306,106,206,506,'Dravid','Nikitha',9019520596,'LOW',50);
INSERT INTO DRIVING_LICENCE_info values(7,307,107,207,507,'Sinchana','Ranjith',9019520597,'High',100);
INSERT INTO DRIVING_LICENCE_info values(8,308,108,208,508,'Gagana','Kishor',9019520598,'AVG',60);
INSERT INTO DRIVING_LICENCE_info values(9,309,109,209,509,'Chandana','Madhu',9019520599,'LOW',50);
INSERT INTO DRIVING_LICENCE_info values(10,310,110,210,510,'Siri','Manikya',9019520590,'High',100);
INSERT INTO DRIVING_LICENCE_info values(11,311,111,211,512,'manikya','Siri',9019520513,'AVg',60);
INSERT INTO DRIVING_LICENCE_info values(12,312,112,212,513,'Madhu','Chandana',9019520523,'LOW',50);
INSERT INTO DRIVING_LICENCE_info values(13,313,113,213,514,'Nikitha','Sinchana',9019520533,'High',100);
INSERT INTO DRIVING_LICENCE_info values(14,314,114,214,515,'Pradeep','Gagana',9019520543,'AVG',60);
INSERT INTO DRIVING_LICENCE_info values(15,315,115,215,516,'Kishor','Swathi',9019520553,'LOW',50);
INSERT INTO DRIVING_LICENCE_info values(16,316,116,216,517,'Ranjith','Neha',9019520563,'High',100);
INSERT INTO DRIVING_LICENCE_info values(17,317,117,217,518,'Preethi','Aishu',9019520573,'AVG',60);
INSERT INTO DRIVING_LICENCE_info values(18,318,118,218,519,'Prathap','Gowri',9019520583,'LOW',50);
INSERT INTO DRIVING_LICENCE_info values(19,319,119,219,520,'Prem','Rishika',9019520503,'High',100);
INSERT INTO DRIVING_LICENCE_info values(20,320,120,220,511,'Ananya','Shreya',9019520693,'AVG',60);

INSERT INTO DRIVING_LICENCE_test_info values(1,401,301,501,'Arathi','Ananya',9019520593,'High',100,'NOREMARK');
INSERT INTO DRIVING_LICENCE_test_info values(2,402,302,502,'Parshu','Prem',9019520591,'AVG',70,'NEEDFOCUS');
INSERT INTO DRIVING_LICENCE_test_info values(3,403,303,503,'Virat','Prathap',9019520592,'LOW',50,'NEEDEFFORT');
INSERT INTO DRIVING_LICENCE_test_info values(4,404,304,504,'Rahul','Preethi',9019520594,'High',100,'NOREMARK');
INSERT INTO DRIVING_LICENCE_test_info values(5,405,305,505,'Yuvraj','Pradeep',9019520595,'AVG',60,'NEEDFOCUS');
INSERT INTO DRIVING_LICENCE_test_info values(6,406,306,506,'Dravid','Nikitha',9019520596,'LOW',50,'NEEDEFFORT');
INSERT INTO DRIVING_LICENCE_test_info values(7,407,307,507,'Sinchana','Ranjith',9019520597,'High',100,'NOREMARK');
INSERT INTO DRIVING_LICENCE_test_info values(8,408,308,508,'Gagana','Kishor',9019520598,'AVG',60,'NEEDFOCUS');
INSERT INTO DRIVING_LICENCE_test_info values(9,409,309,509,'Chandana','Madhu',9019520599,'LOW',50,'NEEDEFFORT');
INSERT INTO DRIVING_LICENCE_test_info values(10,410,310,510,'Siri','Manikya',9019520590,'High',100,'NOREMARK');
INSERT INTO DRIVING_LICENCE_test_info values(11,411,311,512,'manikya','Siri',9019520513,'AVg',60,'NEEDFOCUS');
INSERT INTO DRIVING_LICENCE_test_info values(12,412,312,513,'Madhu','Chandana',9019520523,'LOW',50,'NEEDEFFORT');
INSERT INTO DRIVING_LICENCE_test_info values(13,413,313,514,'Nikitha','Sinchana',9019520533,'High',100,'NOREMARK');
INSERT INTO DRIVING_LICENCE_test_info values(14,414,314,515,'Pradeep','Gagana',9019520543,'AVG',60,'NEEDFOCUS');
INSERT INTO DRIVING_LICENCE_test_info values(15,415,315,516,'Kishor','Swathi',9019520553,'LOW',50,'NEEDEFFORT');
INSERT INTO DRIVING_LICENCE_test_info values(16,416,316,517,'Ranjith','Neha',9019520563,'High',100,'NOREMARK');
INSERT INTO DRIVING_LICENCE_test_info values(17,417,317,518,'Preethi','Aishu',9019520573,'AVG',60,'NEEDFOCUS');
INSERT INTO DRIVING_LICENCE_test_info values(18,418,318,519,'Prathap','Gowri',9019520583,'LOW',50,'NEEDEFFORT');
INSERT INTO DRIVING_LICENCE_test_info values(19,419,319,520,'Prem','Rishika',9019520503,'High',100,'NOREMARK');
INSERT INTO DRIVING_LICENCE_test_info values(20,420,320,511,'Ananya','Shreya',9019520693,'AVG',60,'NEEDFOCUS');

INSERT INTO LLR_info(id,LLR_id) values(1,101) on duplicate key update user_name='Anu';
INSERT INTO LLR_test_info(id,test_id) values(1,201) on duplicate key update user_name='Anu';
INSERT INTO DRIVING_LICENCE_info(id,DL_id) values(1,301) on duplicate key update user_name='Anu';
INSERT INTO DRIVING_LICENCE_test_info(id,DL_test_id) values(1,401) on duplicate key update user_name='Anu';

REPLACE INTO LLR_info(id,LLR_id) values(99,'121');
REPLACE INTO LLR_test_info(id,test_id) values(99,'221');
REPLACE INTO DRIVING_LICENCE_info(id,DL_id) values(99,'321');
REPLACE INTO DRIVING_LICENCE_test_info(id,DL_test_id) values(99,'421');

SELECT * FROM DRIVING_LICENCE_test_info;
SELECT * FROM DRIVING_LICENCE_info;
SELECT * FROM LLR_info;
SELECT * FROM LLR_test_info;



