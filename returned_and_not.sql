select count(*) as orders_all, count(distinct o.order_id) as returned_orders, count(o.sales) as sum_of_returned_orders
from orders o
inner join returns r on o.order_id = r.order_id
;

select count(distinct o.order_id) as not_returned_orders, count(o.sales) as sum_of_profit_orders
from orders o
join returns r on o.order_id != r.order_id
