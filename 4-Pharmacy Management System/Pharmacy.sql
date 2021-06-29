use pharmacy;

create table register(custid int(6)primary key,custname varchar(25),uname varchar(25),psw varchar(15),address varchar(40),mobile varchar(15));

create table products(pname varchar(25),cname varchar(25),mfg date,exp date,price numeric(10));

create table billing(billno varchar(25),billdate date,pname varchar(25),quantity numeric(5),price numeric(6),discount varchar(5),gst integer(5),amount numeric(10));

create table orders(orderno varchar(10),orderdate date,pname varchar(25),quantity numeric(5));

create table supplier(sid varchar(6),sname varchar(25),Address varchar(40),mobile varchar(15),GST varchar(15));

create table purchase(pbill varchar(5),bdate date,sid varchar(10),pname varchar(25),cname varchar(25),qty varchar(5),price numeric(10),gst integer(5),total numeric(10));

select * from products;

select * from orders;

select * from register;

select * from billing;

select * from supplier;

select * from purchase;

desc orders;



