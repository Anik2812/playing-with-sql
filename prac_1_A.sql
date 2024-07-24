create database practical_1;
use practical_1;
create table Client_master (Client_no varchar(10), Name varchar(20), City varchar(20), Pincode int, State varchar(20), Bal_due int);
desc Client_master;
insert into Client_master values('C001', 'Ivan', 'Bombay', 400054, 'Maharashtra', 15000);
insert into Client_master values('C002', 'Vandana', 'Madras', 780001, 'Tamil Nadu', 0);
insert into Client_master values('C003', 'Pramada', 'Bombay', 400057, 'Maharashtra', 5000);
insert into Client_master values('C004', 'Basu', 'Bombay', 400056, 'Maharashtra', 0);
insert into Client_master values('C005', 'Ravi', 'Delhi', 100001, 'Gujarat', 0);
insert into Client_master values('C006', 'Rukmani', 'Bombay', 400050, 'Maharashtra', 2000);

select * from Client_master;