create table customer
(custid int primary key,custname varchar(20),city varchar(20));

create table item
(itemid int primary key,itemname varchar(20),itemrate int);

create table order_header
(orderid int primary key,orderdate date,cusid int,foreign key(cusid) references customer(custid) );

create table order_details
(orderid int,itemid int,orderqty int,foreign key(orderid) references order_header(orderid),
foreign key (itemid) references item(itemid));
