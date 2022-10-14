select totalamount,shipping_name,productname from orders,product where productname like 'exotic liquids'
and totalamount >50;
alter table product add out_of_stock nvarchar(40), unitinstock decimal(12,2),unitoutstock decimal(12,2);
select out_of_stock, unitinstock,unitoutstock from product;
