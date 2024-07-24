use practical_1;
create table Product_master (Product_no varchar(10), Description varchar(20), P_percent int, U_measure varchar(20), Qty_on_hand int, Reorder_lvl int, sell_price int, Cost_price int);
desc Product_master;
insert into Product_master values('P001', 'Floppies', 5, 'Piece', 100, 20, 525, 500);
insert into Product_master values('P002', 'Monitor', 6, 'Piece', 10, 3, 12000, 11280);
insert into Product_master values('P003', 'Mouse', 5, 'Piece', 20, 5, 1050, 1000);
insert into Product_master values('P004', 'Floppies', 5, 'Piece', 100, 20, 525, 1000);
insert into Product_master values('P005', 'Keyboards', 2, 'Piece', 10, 3, 3150, 500);
insert into Product_master values('P006', 'Cd Drive', 2.5, 'Piece', 10, 3, 5250, 3050);
insert into Product_master values('P007', '1.44 Drive', 4, 'Piece', 10, 3, 8400, 8000);

select * from Product_master;