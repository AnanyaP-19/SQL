CREATE DATABASE HOMEWORK7;
USE HOMEWORK7;
CREATE TABLE show_rooms(id  int not null ,show_room_name varchar(20) unique,address varchar(20) unique, manager_name varchar(20),phone_no bigint not null,no_of_cars int,no_of_staffs int,car_price bigint,capacity int,ratings int,constraint no_of_ratings_chk check(ratings>2),constraint no_of_capacity_chk check(capacity>20));
DESC show_rooms;
CREATE TABLE chat_center(id int not null,chat_center_name varchar(20) unique,address varchar(20) unique,items_name varchar(20),item_no int not null,item_price int,no_of_items int,ratings int,is_offerdable boolean,is_clean boolean,constraint no_of_rating_chk check(ratings>2),constraint total_price_chk check(item_price>50));
DESC chat_center;
CREATE TABLE temple_info(id int not null,temple_name varchar(20) unique,address varchar(20) unique,priest_name varchar(20),phone_no bigint,no_of_priest int not null,capacity int,pooja_price int,pooja_name varchar(20),is_famous boolean,constraint total_pooja_price_chk check(pooja_price>100),constraint total_capacity_chk check(capacity>50));
DESC temple_info; 
CREATE TABLE market_info(id int not null, market_name varchar(20) unique,address varchar(20) unique,no_of_stalls int not null,ratings int,capacity int,pincode int,is_clean boolean,is_famous boolean,is_nearest boolean,constraint total_ratings_chk check(ratings>2),constraint total_no_of_capacity_chk check(capacity>100));
DESC market_info;
CREATE TABLE metro_info(id int not null,metro_name varchar(20) unique,address varchar(20) unique,no_of_metros int not null,no_of_metro_stations int,line_color varchar(20),ticket_price int,no_of_passengers int,platform_no int,capacity int,constraint total_ticket_price_chk check(ticket_price>10),constraint total_no_of_passengers_chk check(no_of_passengers>50)); 
DESC metro_info;
SELECT * FROM show_room;
INSERT INTO show_room values(1,'BMW','Bengaluru','ananya',9019520593,25,5,5000000,21,5);
INSERT INTO show_room values(2,'KIA','SHIVAMOGGA','anu',9019520592,26,10,500000,22,4);
INSERT INTO show_room values(3,'MARUTISUZULI','MYSORE','arathi',9019520591,26,18,50000,22,5);
INSERT INTO show_room values(4,'AUDI','MUMBAI','prem',9019520590,27,8,50000000,23,4);
INSERT INTO show_room values(5,'SKODA','DELHI','parshu',9019520594,25,16,5000000,24,5);
INSERT INTO show_room values(6,'MAHENDRA','HYDRABAD','pradeep',9019520595,28,12,800000,25,4);
INSERT INTO show_room values(7,'VERNA','CHENNAI','shrya',9019520596,25,5,900000,26,5);
INSERT INTO show_room values(8,'FERARI','USA','bharath',9019520597,26,15,6000000,27,4);
INSERT INTO show_room values(9,'LAMBORGhINI','GERMANY','anusha',9019520598,29,5,8000000,28,5);
INSERT INTO show_room values(10,'MG HECTOR','CANADA','manikya',90195205939,25,11,9000000,29,4);
INSERT INTO show_room values(11,'INOVA','KERALA','madhu',9019520583,28,5,8000000,31,5);
INSERT INTO show_room values(12,'CREATA','COORG','arjun',9019520573,25,6,2000000,30,4);
INSERT INTO show_room values(13,'HYRIDER','AGRA','prathap',9019520563,29,5,1000000,28,4);
INSERT INTO show_room values(14,'JEEP','MUNNAR','preethi',9019520693,25,7,3000000,29,5);
INSERT INTO show_room values(15,'FORD','UK','ranjith',9019520553,30,5,4000000,22,4);
INSERT INTO show_room values(16,'BENTLY','ITALY','supeed',9019520543,25,8,6000000,21,5);
INSERT INTO show_room values(17,'TESLA','UAE','yash',9019520533,31,9,7000000,23,4);
INSERT INTO show_room values(18,'HYUNDAI','AMERICA','kishore',9019520523,25,11,9000000,33,5);
INSERT INTO show_room values(19,'JAGUAR','PARIS','naveen',9019520513,32,10,5200000,34,4);
INSERT INTO show_room values(20,'PORSCHE','FRANCE','nikil',9019520503,35,15,10000000,35,5);

SELECT * FROM chat_center;
INSERT INTO chat_center values(1,'om sai ram','Bengaluru','dryfruitchat',1,60,20,5,true,true);
INSERT INTO chat_center values(2,'om sri ram','MYSORE','drychat',1,55,20,5,true,true);
INSERT INTO chat_center values(3,'chats','rajajinagra','panipuri',1,70,20,5,false,false);
INSERT INTO chat_center values(4,'kfc','indranagar','zingerburger',1,200,20,5,true,true);
INSERT INTO chat_center values(5,'mcdonalds','btm','mactikki',1,60,20,5,false,false);
INSERT INTO chat_center values(6,'brgerking','whitefield','burger',1,80,20,5,true,true);
INSERT INTO chat_center values(7,'cost','germany','cookies',1,80,20,5,false,true);
INSERT INTO chat_center values(8,'timhottens','canada','salad',1,160,20,5,true,false);
INSERT INTO chat_center values(9,'dominos','america','pizza',1,100,20,5,false,true);
INSERT INTO chat_center values(10,'pizzahut','usa','garlicbread',1,120,20,5,true,false);
INSERT INTO chat_center values(11,'lapinoz','uk','oneslicepizza',1,180,20,5,true,true);
INSERT INTO chat_center values(12,'dvscircle','shivamogga','masalpuri',1,60,20,5,false,true);
INSERT INTO chat_center values(13,'batrupanipuri','vinobnagar','belpuri',1,65,20,5,true,true);
INSERT INTO chat_center values(14,'manjunatabelhoude','bhroad','belchat',1,62,20,5,true,false);
INSERT INTO chat_center values(15,'truffel','kormangala','frencgfries',1,200,20,5,false,true);
INSERT INTO chat_center values(16,'oneists','mejestic','breadstick',1,130,20,5,true,false);
INSERT INTO chat_center values(17,'overstory','coorg','sandwitch',1,150,20,5,false,true);
INSERT INTO chat_center values(18,'pizzaproject','italy','margeritapizza',1,180,20,5,true,false);
INSERT INTO chat_center values(19,'sai rma','nemangala','bananastemchat',1,68,20,5,false,true);
INSERT INTO chat_center values(20,'sri ram','mgroad','samosa',1,60,20,5,true,false);
SELECT * FROM temple_info;
INSERT INTO temple_info values(1,'RAMMANDIR','AYODYA','PREM',9019520593,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(2,'KEDARNATH','UTTARKAND','PREM1',9019520592,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(3,'VARANASI','KASHI','PREM2',9019520591,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(4,'PURIJAGANNATH','KOLKATTA','PREM3',9019520594,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(5,'VISHNOWDEVI','JAMMU','PREM4',9019520595,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(6,'HANUMANTEMPLE','HAMPI','PREM5',9019520596,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(7,'MAHAKALESHWAR','UJJAIN','PREM6',9019520597,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(8,'SAIBABAMANDIR','SHIRIDI','PREM7',9019520598,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(9,'RAGHAVENDRASWAMY','MANTRALAYA','PREM8',9019520599,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(10,'SHRILAKSHMITEMPLE','DELHI','PREM9',9019520590,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(11,'BADRINATH','CHAMOLI','PREM10',9019520583,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(12,'SUNTEMPLE','ODISHA','PREM11',9019520573,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(13,'SOMNATHTEMPLE','GUJRAT','PREM12',9019520563,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(14,'RAMANATHASWAMYTEMPLE','TAMILNADU','PREM13',9019520553,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(15,'GANGOTRI','UTTARKASHI','PREM14',9019520543,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(16,'GOLDENTEMPLE','PUNJAB','PREM15',9019520533,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(17,'MEENAKSHITEMPLE','MADURAI','PREM16',9019520523,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(18,'TIRUPATI','ANDRA','PREM17',9019520513,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(19,'KAMAKHYATEMPLE','ASSAM','PREM18',9019521593,25,100,101,'MANGALARATI',true);
INSERT INTO temple_info values(20,'DWARKADHISHATEMPLE','DWARKA','PREM19',9018520593,25,100,101,'MANGALARATI',true);
SELECT * FROM market_info;
INSERT INTO market_info values(1,'krmarket','bengaluru',100,5,150,577,true,true,true);
INSERT INTO market_info values(2,'kkmarket','mysore',101,5,150,571,true,false,true);
INSERT INTO market_info values(3,'kamarket','mandya',102,5,150,572,false,true,true);
INSERT INTO market_info values(4,'kbmarket','shivamogga',103,5,150,573,true,true,false);
INSERT INTO market_info values(5,'kcmarket','tumkur',104,5,150,574,false,true,true);
INSERT INTO market_info values(6,'kdmarket','chitradurga',105,5,150,557,true,false,true);
INSERT INTO market_info values(7,'kemarket','gadag',106,5,150,575,true,true,false);
INSERT INTO market_info values(8,'kfmarket','hubli',107,5,150,576,false,true,true);
INSERT INTO market_info values(9,'kgmarket','dharwad',108,5,150,578,true,false,true);
INSERT INTO market_info values(10,'khmarket','belgam',109,5,150,579,true,true,false);
INSERT INTO market_info values(11,'kimarket','hasan',110,5,150,570,false,true,true);
INSERT INTO market_info values(12,'kjmarket','mandgadde',111,5,150,177,true,false,true);
INSERT INTO market_info values(13,'ktmarket','tirtalli',112,5,150,277,true,true,false);
INSERT INTO market_info values(14,'klmarket','agumbe',113,5,150,527,false,true,true);
INSERT INTO market_info values(15,'kmmarket','chickmangluru',114,5,150,377,true,false,true);
INSERT INTO market_info values(16,'knmarket','mejestic',115,5,150,477,true,true,false);
INSERT INTO market_info values(17,'komarket','rajajinagra',116,5,150,677,false,true,true);
INSERT INTO market_info values(18,'kpmarket','vinobnarag',117,5,150,777,true,false,true);
INSERT INTO market_info values(19,'kqmarket','navle',118,5,150,877,true,true,false);
INSERT INTO market_info values(20,'ksmarket','hehonnur',1119,5,150,977,false,true,true);
SELECT * FROM metro_info;
INSERT INTO metro_info values(1,'nammametro','bengaluru',100,20,'yellow',20,101,1,150);
INSERT INTO metro_info values(2,'nammametro1','mysore',100,20,'green',20,101,1,150);
INSERT INTO metro_info values(3,'nammametro2','mandya',100,20,'purple',20,101,1,150);
INSERT INTO metro_info values(4,'nammametro3','shimoga',100,20,'yellow',20,101,1,150);
INSERT INTO metro_info values(5,'nammametro4','bhadravati',100,20,'green',20,101,1,150);
INSERT INTO metro_info values(6,'nammametro5','navle',100,20,'purple',20,101,1,150);
INSERT INTO metro_info values(7,'nammametro6','nelmangla',100,20,'green',20,101,1,150);
INSERT INTO metro_info values(8,'nammametro7','rrnagra',100,20,'yellow',20,101,1,150);
INSERT INTO metro_info values(9,'nammametro8','indranagra',100,20,'purple',20,101,1,150);
INSERT INTO metro_info values(10,'nammametro9','mspalya',100,20,'green',20,101,1,150);
INSERT INTO metro_info values(11,'nammametro10','mahalakshmi',100,20,'yellow',20,101,1,150);
INSERT INTO metro_info values(12,'nammametro11','mejestic',100,20,'purple',20,101,1,150);
INSERT INTO metro_info values(13,'nammametro12','southendcircle',100,20,'green',20,101,1,150);
INSERT INTO metro_info values(14,'nammametro13','sandalsoap',100,20,'yellow',20,101,1,150);
INSERT INTO metro_info values(15,'nammametro14','mgroad',100,20,'purple',20,101,1,150);
INSERT INTO metro_info values(16,'nammametro15','yeshwantpur',100,20,'greem',20,101,1,150);
INSERT INTO metro_info values(17,'nammametro16','penya',100,20,'yellow',20,101,1,150);
INSERT INTO metro_info values(18,'nammametro17','palaceground',100,20,'puple',20,101,1,150);
INSERT INTO metro_info values(19,'nammametro18','lalbag',100,20,'green',20,101,1,150);
INSERT INTO metro_info values(20,'nammametro19','vidansowda',100,20,'yellow',20,101,1,150);

ALTER TABLE metro_info modify column no_of_passengers int not null;
ALTER TABLE metro_info add constraint id_uni unique(id);
ALTER TABLE metro_info add constraint no_of_metros_chk check(no_of_metros>99);
ALTER TABLE metro_info add constraint capacity_chk check(capacity>110);

ALTER TABLE market_info modify column pincode int not null;
ALTER TABLE market_info add constraint id_uni unique(id);
ALTER TABLE market_info add constraint no_of_stalls_chk check(no_of_stalls>99);
ALTER TABLE market_info add constraint pincode_chk check(pincode>100);

ALTER TABLE temple_info modify column phone_no bigint not null;
ALTER TABLE temple_info add constraint id_uni unique(id);
ALTER TABLE temple_info add constraint no_of_priest_chk check(no_of_priest>21);
ALTER TABLE temple_info add constraint phone_no check(phone_no>100000000000);

ALTER TABLE chat_center modify column item_price int not null;
ALTER TABLE chat_center add constraint id_uni unique(id);
ALTER TABLE chat_center add constraint no_of_item_chk check(no_of_items>15);
ALTER TABLE chat_center add constraint item_price_chk check(item_price>50);

ALTER TABLE show_rooms modify column no_of_staffs int not null;
ALTER TABLE show_rooms add constraint id_uni unique(id);
ALTER TABLE show_rooms add constraint car_price_chk check(car_price>10000);
ALTER TABLE show_rooms add constraint no_of_cars_chk check(no_of_cars>20);
