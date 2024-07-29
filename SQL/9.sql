USE HOMEWORK8;
CREATE TABLE order_info(id int,order_name varchar(20),cost bigint,order_id int primary key,created_at timestamp,created_by varchar(20),modified_at timestamp);
CREATE TABLE payment_info(id int,price int,payment_id int primary key,order_id int,payment_status varchar(20),created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),foreign key(order_id) references order_info(order_id));
CREATE TABLE restaurant_info(id int,restaurant_name varchar(20),restaurant_id int primary key,loc varchar(20),order_id int,ratings int,payment_id int,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),foreign key(order_id) references order_info(order_id),foreign key(payment_id) references payment_info(payment_id));
CREATE TABLE delivery_info(id int,person_name varchar(20),delivery_id int primary key,mode_of_payment enum('online','offline'),restaurant_id int,order_id int,ratings int,payment_id int,created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(20),foreign key(order_id) references order_info(order_id),foreign key(payment_id) references payment_info(payment_id),foreign key(restaurant_id) references restaurant_info(restaurant_id));
SELECT * FROM order_info;
DESC order_info;
SELECT * FROM payment_info;
DESC payment_info;
SELECT * FROM restaurant_info;
DESC restaurant_info;
SELECT * FROM delivery_info;
DESC delivery_info;

INSERT INTO order_info values(1,'ananya',200,101,'2024-07-26','kfc','2024-07-27');
INSERT INTO order_info values(2,'prem',250,102,'2024-07-25','dominos','2024-07-26');
INSERT INTO order_info values(3,'prathap',300,103,'2024-07-24','pizzhut','2024-07-25');
INSERT INTO order_info values(4,'preethi',350,104,'2024-07-23','biriyani house','2024-07-24');
INSERT INTO order_info values(5,'pradeep',400,105,'2024-07-22','biriyani mane','2024-07-23');

INSERT INTO payment_info values(1,100,201,101,'DONE','2024-01-01','ananya','2024-01-02','prem');
INSERT INTO payment_info values(2,200,202,102,'DONE','2024-01-02','prem','2024-01-03','ananya');
INSERT INTO payment_info values(3,300,203,103,'DONE','2024-01-03','prathap','2024-01-04','preethi');
INSERT INTO payment_info values(4,400,204,104,'DONE','2024-01-04','preethi','2024-01-05','prathap');
INSERT INTO payment_info values(5,500,205,105,'DONE','2024-01-05','pradeep','2024-01-06','nikitha');

INSERT INTO restaurant_info values(1,'KFC',301,'rajajinagra',101,5,201,'2024-02-01','ananya','2024-02-02','prem');
INSERT INTO restaurant_info values(2,'SFC',302,'jaynagra',102,4,202,'2024-02-02','prem','2024-02-03','ananya');
INSERT INTO restaurant_info values(3,'GFC',303,'viyaynagra',103,4,203,'2024-02-03','prathap','2024-02-04','preethi');
INSERT INTO restaurant_info values(4,'AFC',304,'rrnagra',104,3,204,'2024-02-04','preethi','2024-02-05','prathap');
INSERT INTO restaurant_info values(5,'PFC',305,'krpuram',105,3,205,'2024-02-05','pradeep','2024-02-06','nikitha');

INSERT INTO delivery_info values(1,'ananya',401,'online',301,101,5,201,'2024-03-01','ananya','2024-03-02','prem');
INSERT INTO delivery_info values(2,'prem',402,'online',302,101,4,202,'2024-03-02','prem','2024-03-03','ananya');
INSERT INTO delivery_info values(3,'prathap',403,'online',303,101,5,203,'2024-03-03','prathap','2024-03-04','preethi');
INSERT INTO delivery_info values(4,'preethi',404,'offline',304,101,4,204,'2024-03-04','preethi','2024-03-05','prathap');
INSERT INTO delivery_info values(5,'pradeep',405,'offline',305,101,5,205,'2024-03-05','pradeep','2024-03-06','nikitha');