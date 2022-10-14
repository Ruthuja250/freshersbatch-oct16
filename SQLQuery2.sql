select * from order_item;
create index idx_orderitem on order_item(ord_id);
create index idx_order_pro_item on order_item(pro_id);
create table product(pro_id int primary key,
productname nvarchar(50),
unitprice decimal(12,2),
package nvarchar(30),
isdiscontinued bit);
select * from product;
insert into product values(101,'hute',3.45,'xy',0);
insert into product values(102,'chute',3.45,'xy',1);
insert into product values(103,'achute',3.45,'xy',1);
insert into product values(104,'arachute',3.45,'xy',0);
insert into product values(105,'chute',3.45,'xy',1);
create index idx_pro_id on product (pro_id);
create index idx_pro_name on product (productname);
select * from customer;
create index idx_customername on customer (firstname,lastname);
alter table customer alter column firstname int not null;
alter table orders alter column orderdate int not null;
sELECT Country from Customer
where Country like 'A%'


SELECT Country from Customer
where Country like 'i%'

SELECT * from Customer 
WHERE LastName like '__i%';

select * from  Customer;

SELECT * from Customer
where Country like 'Germany';

SELECT FirstName,LastName 'FullName' from Customer;

SELECT * from Customer
WHERE LastName like '_u%';

SELECT * from Customer
WHERE FirstName like '_u%';

SELECT UnitPrice from order_item 
WHERE UnitPrice>'10' and UnitPrice<'20';

SELECT OrderDate 'shipping' from Orders
ORDER BY  OrderDate DESC;

insert into product values(111,'exotic liquids',123.0,'yes',0);
select * from product;

select productname from product
where productname like 'exotic liquids';

select AVG(unitprice) from product;
alter table Customerss add fax_number int;
select * from Customer;

alter table Orderss add shipping_name nvarchar(40),shipping_date date;
select * from Orders;

alter table product add category nvarchar(40);
select * from product;

create table employee
(
emp_id int,
emp_name nvarchar(40),
depart_name nvarchar(40),
manager_name nvarchar(40),
joining date,
rating int
);
select * from employee;
insert into employee values(11,'samruddhi','incometax','payal','2002-05-13',4);
insert into employee values(12,'prashant','fax','raj','2002-08-19',3);
insert into employee values(13,'amit','desk','yog','2002-08-17',2);
insert into employee values(14,'vijay','head','meet','2002-10-14',5);
insert into employee values(15,'shweta','service','shratik','2002-12-11',4);
insert into employee values(16,'riddhi','hr','soham','2002-02-12',3);
insert into employee values(17,'siddhi','payroll','guru','2002-09-15',5);
select * from employee;

insert into product(category) values('seafood');
select fax_number from Customer;

select emp_name , manager_name from employee;

select distinct productname,unitprice,category
from product
where unitprice>(select AVG(unitprice) from product)
order by unitprice;

alter table product add category_name nvarchar(40);
select * from product;

alter table product add price_after_discount nvarchar(40);
select * from product;

select distinct productname,unitprice,category,price_after_discount
from product
where unitprice>(select AVG(unitprice) from product)
order by unitprice;

select pro_id, isnull (category,'seafood') category from product;

select * from Orders,product where TotalAmount >'50'and  productname like 'exotic liquids';

select ordernumber,phone from Orders,Customer;

select category from product where category like 'seafood';

select ordernumber,country from Orders,Customer where country like 'india';

select ordernumber ,productname from Orders,product where productname like 'chai';

select emp_name,depart_name,rating from employee where emp_name like 'samruddhi';

select * from Orders,product where TotalAmount >'50'and  productname like 'exotic liquids';

select min(joining) as earlistdate from employee;

select max(joining) as earlistdate from employee;

alter table product add out_of_stock nvarchar(40), unitinstock decimal(12,2),unitoutstock decimal(12,2);
select out_of_stock,unitinstock,unitoutstock from product;


SELECT productname, unitprice 
FROM product
ORDER BY unitprice DESC;

alter table product add unitinstock nvarchar(40);
select * from product;

alter table product add  unitonorder nvarchar(40);
select * from product;

SELECT productname, unitinstock, unitoutstock 
FROM product
WHERE (unitinstock<unitoutstock);



select pro_id,productname,unitprice,category
from product
where (unitprice<20)
order By unitprice DESC;

SELECT Orders.OrderNumber, Customer.Cust_id
FROM Orders, Customer
WHERE Orders.cust_id= Customer.cust_id;


SELECT cust_id from Orders
where cust_id like '1012';

alter table product add companyname nvarchar(40);
select * from product;
select totalamount,shipping_name,productname from orders,product where productname like 'exotic liquids'
and totalamount >50;
alter table product add out_of_stock nvarchar(40), unitinstock decimal(12,2),unitoutstock decimal(12,2);
select out_of_stock, unitinstock,unitoutstock from product;
