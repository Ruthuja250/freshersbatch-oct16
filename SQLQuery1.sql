use assignment;
create table customer(
custid int primary key,
firstname nvarchar(40),
lastname nvarchar(40),
city nvarchar(40),
country nvarchar(40),
phone nvarchar(20));
select * from customer;
create index customername on customer( lastname,firstname);
insert into customer values(1011,'yalawar','ruthuja','nanded','india',1234567490);
insert into customer values(1012,'trimbake','samu','pune','india',1234567590);
insert into customer values(1013,'shirole','ridhi','mumbai','india',1234567690);
insert into customer values(1014,'sorte','tanvi','nagpur','india',1234567790);
insert into customer values(1015,'reddy','shashi','hyderabad','india',1234567890);
use assignment;
create table orders(id int primary key,orderdate datetime,ordernumber nvarchar(10),customerid int ,totalamount decimal(12,2));
select * from orders;
alter table orders
add constraint fk_orders foreign key(customerid)references customer (customerid);
select * from customer;
select * from orders;
EXEC sp_rename 'orders.ordid', 'ord_id','column';
EXEC sp_rename 'customer.custid', 'cust_id','column';
EXEC sp_rename 'orders.custid', 'cust_id','column';
create index idx_cust_id on orders (cust_id);
create index idx_orderdate on orders (orderdate);
insert into orders values(2100,25-04-200,101,1011,2000);
insert into orders values(2101,22-11-200,102,1011,2010);
insert into orders values(2102,24-08-200,103,1011,2980);
insert into orders values(2103,21-09-200,104,1011,2560);
insert into orders values(2104,23-10-200,105,1011,1900);
use assignment;
create table orderss(ord_id int primary key,orderdate datetime,ordernumber nvarchar(10),cust_id int ,totalamount decimal(12,2));
insert into orderss values(2100,25-04-200,101,1011,2000);
insert into orderss values(2101,22-11-200,102,1011,2010);
insert into orderss values(2102,24-08-200,103,1011,2980);
insert into orderss values(2103,21-09-200,104,1011,2560);
insert into orderss values(2104,23-10-200,105,1011,1900);
select * from orders;
select * from order_item;
insert into order_item values(1,1,1,112.00,3);
insert into order_item values(2,2,2,234.00,3);
insert into order_item values(3,3,3,345.00,3);
insert into order_item values(4,4,4,678.00,3);
insert into order_item values(5,5,5,901.00,3);

