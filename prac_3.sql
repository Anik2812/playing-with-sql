use bda_23162121021;

drop table sales_order;
create table sales_order (Order_no varchar(10), Order_date date, Client_no varchar(10), S_no varchar(5), Dely_type varchar(5), Billed_yn varchar(5), Dely_date date, Order_status varchar(20));

insert into sales_order values('O1901', '2015-12-06', 'C001', 'S001', 'F', 'N', '2015-12-20', 'InProcess');
insert into sales_order values('O1902', '2015-01-25', 'C002', 'S002', 'P', 'N', '2015-06-27', 'Cancelled');
insert into sales_order values('O4665', '2015-02-18', 'C003', 'S003', 'F', 'Y', '2015-02-20', 'Fulfilled');
insert into sales_order values('O1903', '2015-04-03', 'C001', 'S001', 'F', 'Y', '2015-04-07', 'Fulfilled');
insert into sales_order values('O4666', '2015-05-20', 'C004', 'S002', 'P', 'N', '2015-05-22', 'Cancelled');
insert into sales_order values('O1908', '2015-05-24', 'C005', 'S003', 'F', 'N', '2015-05-26', 'InProcess');
select * from sales_order;

select * from client_master where Name like '_a%';
select * from client_master where Name like '_a__';
select * from client_master where City like '%a_';
select * from client_master where Bal_due not between 0 and 1000;
select * from sales_order where Order_date like '%-01-%';
select * from client_master where Client_no='C003' or Client_no='C001';
select * from product_master where sell_price between 2000 and 5000;
select sell_price > 1500 and sell_price*0.15 new_price from product_master;
select * from product_master;
select * from client_master where state not in ('maharashtra');
select count(*) as total_orders from sales_order;
select avg(sell_price) as average_price from product_master;
select max(sell_price) as max_price, min(sell_price) as min_price from product_master;
select count(*) as products_count from product_master where sell_price >= 1500;
select * from product_master where qty_on_hand < reorder_level;

create table cmaster as select * from client_master;
insert into cmaster select * from client_master where city = 'bombay';

create table sales as select order_no, client_no from sales_order;
insert into sales (order_no, client_no) select order_no, client_no from sales_order;

select order_no, dayname(order_date) as order_day from sales_order;
select date_format(dely_date, '%M %d') as dely_month_date from sales_order;
select datediff(dely_date, order_date) as days_elapsed from sales_order;
select date_add(current_date(), interval 15 day) as date_after_15_days;
select now() as current_date_time;
select curtime() as system_time;
