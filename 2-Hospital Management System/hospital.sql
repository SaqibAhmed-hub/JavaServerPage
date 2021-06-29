create database hospital;

use hospital;

create table register(adminid varchar(10),aname varchar(25),uname varchar(25),pass varchar(15),address varchar(40),mobile varchar(15));

create table admit(pid varchar(10),pname varchar(25),gender varchar(8),age integer(5),address varchar(40),mobile varchar(15),adate Date,wardno varchar(6),complaint varchar(100));

create table discharge(pid varchar(10),pname varchar(25),gender varchar(8),ddate Date,disstatus varchar(50));

create table doctor(did varchar(10),dname varchar(25),dateofjoin Date,specialist varchar(20),daddress varchar(25),dcontact varchar(25));

create table nurse(nid varchar(10),nname varchar(25),address varchar(40),contact varchar(15));

create table billing(billno varchar(10),bdate varchar(15),pid varchar(10),pname varchar(25),adate varchar(25),ddate varchar(25),complaint varchar(40),doctor varchar(10),Lab varchar(10),medicine varchar(10),room varchar(10),other varchar(10),total varchar(10));

