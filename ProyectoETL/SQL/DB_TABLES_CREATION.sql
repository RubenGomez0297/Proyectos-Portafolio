CREATE DATABASE SUPERSTORE

USE SUPERSTORE


CREATE TABLE PRODUCTS (
product_id VARCHAR(30) PRIMARY KEY NOT NULL,
category VARCHAR(60) not null,
sub_category VARCHAR(60)not null,
prodcut_name VARCHAR(255) not null
)

CREATE TABLE CLIENT(
customer_ID	VARCHAR(30) PRIMARY KEY NOT NULL,
customer_name VARCHAR(50) NOT NULL,
segment	VARCHAR(30) NOT NULL,
country	VARCHAR(30),
city	VARCHAR(30),
state_name	VARCHAR(30),
postal_code	int,
region	VARCHAR(30)
)

CREATE TABLE SALES(
id INT IDENTITY(1,1) NOT NULL,
order_id VARCHAR(30) NOT NULL,
order_date  DATETIME,
ship_date DATETIME,
ship_mode VARCHAR(30),
customer_id VARCHAR(30) FOREIGN KEY (customer_id) REFERENCES CLIENT(customer_id) NOT NULL,
customer_name VARCHAR(50) NOT NULL,
segment VARCHAR(30) NOT NULL,
country VARCHAR(30),
city VARCHAR(30),
state_name VARCHAR(30),
postal_code VARCHAR(30),
region VARCHAR(30),
product_id VARCHAR(30) FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id)  NOT NULL,
category VARCHAR(60),
sub_category VARCHAR(60),
product_name VARCHAR(255),
sales DECIMAL(12,2) not null,
quantity INT not null,
discount DECIMAL(4,2) not null,
profit DECIMAL (12,2) not null
PRIMARY KEY (id,order_id, product_id, customer_id)
)