CREATE DATABASE HOMEWORK6;
USE HOMEWORK6;
CREATE TABLE state_info(id int, state_name varchar(20),state_CM_name varchar(20), state_pincode int,state_population bigint);
CREATE TABLE scam_info(id int, scam_name varchar(20),scam_email varchar(20),sacm_password int,scam_accpunt_number bigint);
ALTER TABLE state_info add column state_capital_name varchar(20);
ALTER TABLE state_info add column no_of__distics_in_state int;
ALTER TABLE state_info add column state_famousplace_name varchar(20);
ALTER TABLE state_info add column no_of_schools_in_state bigint;
ALTER TABLE state_info add column no_of_hospital_in_state bigint;

ALTER TABLE scam_info add column scam_security_no bigint;
ALTER TABLE scam_info add column scam_payment_no bigint;
ALTER TABLE scam_info add column scam_phone_no bigint;
ALTER TABLE scam_info add column scam_socialmedia varchar(20);
ALTER TABLE scam_info add column scamer_name varchar(20);

ALTER TABLE state_info rename column state_capital_name to state_ca_name;
ALTER TABLE state_info rename column no_of__distics_in_state to no_of__D_in_state;
ALTER TABLE state_info rename column state_famousplace_name to state_famous_place_name;
ALTER TABLE state_info rename column state_population to no_of_state_population;
ALTER TABLE state_info rename column state_CM_name to state_Chif_Minister_name;

ALTER TABLE scam_info rename column scam_security_no to scam_security_number;
ALTER TABLE scam_info rename column scam_payment_no to scam_payment_number;
ALTER TABLE scam_info rename column scam_phone_no to scam_phone_number;
ALTER TABLE scam_info rename column id to scam_id;
ALTER TABLE scam_info rename column scam_accpunt_number to scam_account_no;

ALTER TABLE state_info modify column no_of_schools_in_state int;
ALTER TABLE state_info modify column no_of_hospital_in_state int;
ALTER TABLE state_info modify column no_of_state_population int;
ALTER TABLE state_info modify column no_of__D_in_state bigint;
ALTER TABLE state_info modify column id bigint;

ALTER TABLE scam_info modify column scam_security_number int;
ALTER TABLE scam_info modify column scam_payment_number int;
ALTER TABLE scam_info modify column scam_phone_number int;
ALTER TABLE scam_info modify column scam_account_no int;
ALTER TABLE scam_info modify column scam_id bigint;

SELECT * FROM state_info;
INSERT INTO  state_info values(1,'Karnataka','Sidramayya',123,700000,'Bengaluru',31,'JOG',1234,1200);
INSERT INTO  state_info values(2,'Maharashtra','Sidramayya1',124,70000,'Mumbai',39,'JOG1',1235,1201);
INSERT INTO  state_info values(3,'Kerala','Sidramayya2',125,7000,'Munnar',30,'JOG2',1236,1202);
INSERT INTO  state_info values(4,'Tamilnadu','Sidramayya3',126,7000000,'Tirupati',32,'JOG3',1237,1203);
INSERT INTO  state_info values(5,'Andra','Sidramayya4',127,100000,'Bengaluru1',33,'JOG4',1238,1204);
INSERT INTO  state_info values(6,'Hydrabad','Sidramayya5',128,200000,'Chandanichok',34,'JOG5',1239,1205);
INSERT INTO  state_info values(7,'Kolkatta','Sidramayya6',129,300000,'puri',35,'JOG6',1231,1206);
INSERT INTO  state_info values(8,'Kanyakumari','Sidramayya7',113,400000,'statue',36,'JOG7',1230,1207);
INSERT INTO  state_info values(9,'Rajastan','Sidramayya8',114,500000,'Fort',37,'JOG8',1214,1208);
INSERT INTO  state_info values(10,'Gujarath','Sidramayya9',115,600000,'statueoflibarty',38,'JOG9',1224,1209);
INSERT INTO  state_info values(11,'jammu','Sidramayya10',116,800000,'vishnovdevi',41,'JOG10',1244,1210);
INSERT INTO  state_info values(12,'Uttarpradesh','Sidramayya11',117,900000,'kashi',42,'JOG11',1254,1211);
INSERT INTO  state_info values(13,'Skkim','Sidramayya12',118,1000,'Bengaluru2',43,'JOG12',1264,1212);
INSERT INTO  state_info values(14,'Assam','Sidramayya13',119,120000,'Bengaluru3',44,'JOG13',1274,1213);
INSERT INTO  state_info values(15,'Arunchalpradesh','Sidramayya14',110,130000,'Bengaluru4',45,'JOG14',1284,1214);
INSERT INTO  state_info values(16,'bihar','Sidramayya15',223,140000,'Bengaluru5',46,'JOG15',1294,1215);
INSERT INTO  state_info values(17,'Panjab','Sidramayya16',222,150000,'Bengaluru6',47,'JOG16',1234,1216);
INSERT INTO  state_info values(18,'Madyapradesh','Sidramayya17',224,160000,'Bengaluru7',48,'JOG17',1334,1217);
INSERT INTO  state_info values(19,'Delhi','Sidramayya18',323,170000,'Bengaluru8',49,'JOG18',1434,1218);
INSERT INTO  state_info values(20,'Chattisgar','Sidramayya19',423,1800000,'Bengaluru9',28,'JOG18',1534,1219);
SELECT*FROM scam_info;
DESC scam_info;
INSERT INTO scam_info values(1,'jio','abc@gmail.com',1111,1234,12345,123,12345,'insta','abc');
INSERT INTO scam_info values(2,'jio1','abd@gmail.com',1112,1231,12341,121,12346,'insta1','abc1');
INSERT INTO scam_info values(3,'jio2','abe@gmail.com',1113,1232,12342,122,12342,'insta2','abc2');
INSERT INTO scam_info values(4,'jio3','abf@gmail.com',1114,1233,12343,124,12343,'insta3','abc3');
INSERT INTO scam_info values(5,'jio4','abg@gmail.com',1115,1235,12344,125,12344,'insta4','abc5');
INSERT INTO scam_info values(6,'jio5','abh@gmail.com',1116,1236,12346,126,12346,'insta5','abc6');
INSERT INTO scam_info values(7,'jio6','abi@gmail.com',1117,1237,12347,127,12347,'insta6','abc7');
INSERT INTO scam_info values(8,'jio7','abj@gmail.com',1118,1238,12348,128,12349,'insta7','abc8');
INSERT INTO scam_info values(9,'jio8','abk@gmail.com',1119,1239,12349,129,12348,'insta8','abc9');
INSERT INTO scam_info values(10,'jio9','abl@gmail.com',1120,1230,12340,113,12340,'insta9','abc10');
INSERT INTO scam_info values(11,'jio10','abm@gmail.com',1121,1214,22345,133,12341,'insta10','abc11');
INSERT INTO scam_info values(12,'jio11','abn@gmail.com',1122,1224,32345,143,12311,'insta11','abc12');
INSERT INTO scam_info values(13,'jio12','abo@gmail.com',1123,1244,42345,153,12312,'insta12','abc13');
INSERT INTO scam_info values(14,'jio13','abp@gmail.com',1124,1254,52345,163,12313,'insta13','abc4');
INSERT INTO scam_info values(15,'jio14','abq@gmail.com',1125,1264,62345,173,12314,'insta14','abc14');
INSERT INTO scam_info values(16,'jio15','abr@gmail.com',1126,1274,72345,183,12315,'insta15','abc15');
INSERT INTO scam_info values(17,'jio16','abs@gmail.com',1127,1284,82345,193,12316,'insta16','abc16');
INSERT INTO scam_info values(18,'jio17','abt@gmail.com',1128,1294,92345,103,12317,'insta17','abc17');
INSERT INTO scam_info values(19,'jio18','abu@gmail.com',1129,1334,02345,223,12318,'insta18','abc18');
INSERT INTO scam_info values(20,'jio19','abv@gmail.com',1300,1434,44345,323,12319,'insta19','abc19');

UPDATE state_info set state_famous_place_name='sangli' where id=2;
UPDATE state_info set state_famous_place_name='mysore' where id=3;
UPDATE state_info set state_famous_place_name='mandya' where id=4;
UPDATE state_info set state_famous_place_name='hubli' where id=5;
UPDATE state_info set state_famous_place_name='dharwad' where id=6;
UPDATE state_info set state_famous_place_name='belgam' where id=7;
UPDATE state_info set state_famous_place_name='sagara' where id=8;
UPDATE state_info set state_famous_place_name='gadag' where id=9;
UPDATE state_info set state_famous_place_name='kodagu' where id=10;
UPDATE state_info set state_famous_place_name='coorg' where id=1;

UPDATE scam_info set scamer_name='Ananya' where scam_id=2;
UPDATE scam_info set scamer_name='Sudeep' where scam_id=3;
UPDATE scam_info set scamer_name='Darshan' where scam_id=4;
UPDATE scam_info set scamer_name='Prem' where scam_id=5;
UPDATE scam_info set scamer_name='Prathap' where scam_id=6;
UPDATE scam_info set scamer_name='Pradeep' where scam_id=7;
UPDATE scam_info set scamer_name='sagar' where scam_id=8;
UPDATE scam_info set scamer_name='gagan' where scam_id=9;
UPDATE scam_info set scamer_name='chiru' where scam_id=10;
UPDATE scam_info set scamer_name='sunil' where scam_id=1;

DELETE FROM state_info where id=7;
DELETE FROM state_info where id=3;
DELETE FROM state_info where id=5;

DELETE FROM scam_info where scam_id=1;
DELETE FROM scam_info where scam_id=2;
DELETE FROM scam_info where scam_id=4;

UPDATE  state_info SET no_of__D_in_state=30 where id in (3,5,7);
rollback;
SELECT * FROM state_info where id in (6,8);
SELECT * FROM state_info where id not  in (9,10);
SELECT * FROM state_info where id =8 and state_famous_place_name='sagara';
SELECT * FROM state_info where id =8 or state_famous_place_name='sagar';

UPDATE  scam_info SET scam_name='idea' where scam_id in (2,9);
rollback;
SELECT * FROM scam_info where scam_id in (1,2);
SELECT * FROM scam_info where scam_id not  in (3,14);
SELECT * FROM scam_info where scam_id =8 and scamer_name='sagar';
SELECT * FROM scam_info where scam_id =8 or scamer_name='saga';