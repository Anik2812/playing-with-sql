use bda_23162121021;

select p.product_no, p.description
from product_master p
where p.product_no not in (
    select product_no
    from sales_order_details
);

select c.name, c.city, c.pincode
from client_master c
where c.client_no = (
    select client_no
    from sales_order
    where order_no = 'o1901'
);

select c.client_no, c.name
from client_master c
where c.client_no in (
    select client_no
    from sales_order_details
    where product_no = (
        select product_no
        from product_master
        where description = 'mouse'
    )
);

select p.description, sum(s.qty_ordered) as total_qty_sold
from product_master p
join sales_order_details s on p.product_no = s.product_no
group by p.description;

select p.description, sum(s.qty_ordered * s.product_rate) as total_value_sold
from product_master p
join sales_order_details s on p.product_no = s.product_no
group by p.description;

select sum(s.Billed_yn) as total_billed_orders
from sales_order s
where s.order_date between '01-jan-2023' and '31-jan-2023';

select p.product_no, p.description
from product_master p
join sales_order_details s on p.product_no = s.product_no
join sales_order o on s.order_no = o.order_no
join client_master c on o.client_no = c.client_no
where c.name = 'ivan';

select p.product_no, p.description
from product_master p
where p.product_no in (
    select product_no
    from sales_order_details
    group by product_no
    having count(*) >= 3
);

select c.name
from client_master c
join sales_order o on c.client_no = o.client_no
join sales_order_details d on o.order_no = d.order_no
join product_master p on d.product_no = p.product_no
where p.description = 'cd drive'
group by c.name;

select d.product_no, d.order_no
from sales_order_details d
join product_master p on d.product_no = p.product_no
where p.description = 'mouse' and d.qty_ordered < 4;

select
    concat(p.description, ' worth rs. ', cast(sum(d.qty_ordered * d.product_rate) as char), ' was sold.')
from product_master p
join sales_order_details d on p.product_no = d.product_no
group by p.description;