CREATE DATABASE Homework;
Use Homework;
CREATE TABLE Library(Book_id int,Program_id int, Title varchar(20),Publisher_name varchar(20),Author_name varchar(20),Address varchar(20),Phone_no bigint,No_of_copies bigint);
CREATE TABLE Bussiness(Salesman_id int,Customer_id int, Bussiness_name varchar(20),City varchar(20),Salesman_name varchar(20),Customer_name varchar(20),Customer_phone_no bigint,Salesman_phone_no bigint);
CREATE TABLE Movie(Movie_id int, Actor_id int,Actor_name varchar(20),Movie_name varchar(20),Director_name varchar(10),Producer_name varchar(20),Director_phone_number bigint,Producer_phone_number bigint);
CREATE TABLE College(College_id int,USN int,Students_name varchar(20),Address varchar(20),Gender varchar(20),Subjects_offered varchar(20),Students_phone_no bigint,Administration_phone_no bigint);
CREATE TABLE Company(Employee_id int, Department_id int,Company_name varchar(20),Address varchar(20),Gender varchar(20),Department_name varchar(20),Employee_phone_no bigint,Company_Reciption_phone_no bigint);
ALTER TABLE Movie ADD COLUMN Movie_collection bigint;
USE Homework;
ALTER TABLE Movie ADD COLUMN Movie_collection bigint;
ALTER TABLE Movie ADD COLUMN Movie_Budget bigint;
SELECT * FROM Movie;
ALTER TABLE Company ADD COLUMN Company_turnover bigint;
SELECT * FROM Company;

ALTER TABLE Movie ADD COLUMN Movie_location varchar(20);
