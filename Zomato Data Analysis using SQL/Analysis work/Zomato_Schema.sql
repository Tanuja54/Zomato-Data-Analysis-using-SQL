CREATE DATABASE ZOMATO_DB;

USE ZOMATO_DB;

-- Create customer table
CREATE TABLE CUSTOMERS 

(CUSTOMER_ID INT PRIMARY KEY,
CUSTOMER_NAME VARCHAR(35) NOT NULL,
REG_DATE DATE

);

-- create restaurant table
CREATE TABLE RESTAURANTS
(
RESTAURANT_ID INT PRIMARY KEY,
RESTAURANT_NAME VARCHAR(55) NOT NULL,
CITY VARCHAR(30),
OPENING_HOURS VARCHAR(60)
);

-- create orders table
CREATE TABLE ORDERS
(
ORDER_ID INT PRIMARY KEY,	
CUSTOMER_ID	INT,
RESTAURANT_ID INT,	
ORDER_ITEM VARCHAR(50),
ORDER_DATE DATE,
ORDER_TIME TIME,
ORDER_STATUS VARCHAR(20),	
TOTAL_AMOUNT INT,
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
FOREIGN KEY (RESTAURANT_ID) REFERENCES RESTAURANTS(RESTAURANT_ID)
);

-- Create riders table
CREATE TABLE RIDERS
(
RIDER_ID INT PRIMARY KEY,
RIDER_NAME VARCHAR(55),	
SIGN_UP DATE

);

-- create Delivery table

CREATE TABLE DELIVERIES
(
DELIVERY_ID INT PRIMARY KEY,	
ORDER_ID INT,	
DELIVERY_STATUS VARCHAR(20),
DELIVERY_TIME TIME,
RIDER_ID INT,
FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
FOREIGN KEY (RIDER_ID) REFERENCES RIDERS(RIDER_ID)
);
