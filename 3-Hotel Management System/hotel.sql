create database hotel;

use hotel;

create table booking(custname varchar(25),custadd varchar(40),custcont varchar(25),custid varchar(40),Noofper varchar(25),roomtype varchar(25),bookdate Date);

create table checkin(custname varchar(25),custid varchar(25),checkdate Date,Noofper varchar(25),roomtype varchar(25),roomallot varchar(25));

create table checkout(custname varchar(25),custid varchar(25),checkdate Date,checkout Date,Roomno varchar(25),roomstay varchar(25),total varchar(25));

 