use practical_1;
create table Salesman_master (S_no varchar(10), S_name varchar(20), City varchar(20), Pin int, State varchar(20), Sal_Amt int, Tgt_to_get int,Ytd_sales int, Reamrks varchar(20));
desc Salesman_master;
insert into Salesman_master values('S001', 'Kiran', 'Bombay', 400002, 'Maharashtra', 3000, 100, 50, 'Excellent');
insert into Salesman_master values('S002', 'Manish', 'Bombay', 400001, 'Maharashtra', 3000, 200, 100, 'Good');
insert into Salesman_master values('S003', 'Ravi', 'Bombay', 400032, 'Maharashtra', 3000, 200, 100, 'Average');
insert into Salesman_master values('S004', 'Ashish', 'Bombay', 400044, 'Maharashtra', 3500, 200, 150, 'Good');

select * from Salesman_master;