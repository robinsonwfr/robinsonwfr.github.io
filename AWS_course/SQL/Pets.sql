create database if not exists pets;
use pets;

create table customers(cust_id int NOT NULL AUTO_INCREMENT,
cust_fname varchar(20), cust_sname varchar(30), cust_address1 varchar(50),
cust_address2 varchar(50),cust_address3 varchar(50), cust_postcode varchar(10),
primary key (cust_id));

CREATE TABLE animals(
pet_id INTEGER NOT NULL AUTO_INCREMENT,
pet_owner int,
pet_name VARCHAR(20) NOT NULL,
pet_age INTEGER,
pet_breed VARCHAR(20),
pet_type ENUM('Cat', 'Dog', 'Rabbit', 'Fish'),
PRIMARY KEY (pet_id),
FOREIGN KEY (pet_owner) REFERENCES customers(cust_id) on delete cascade);​

Insert into animals(pet_name, pet


