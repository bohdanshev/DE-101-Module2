select
subcategory, count(distinct order_id) as orders_num
from orders o
where o.category = 'Office Supplies'
group by subcategory 
order by orders_num desc
;
select subcategory, count(distinct order_id) as orders_num
from orders o 
where o.category = 'Technology'
group by subcategory 
order by orders_num desc
;
select subcategory, count(distinct order_id) as orders_num
from orders o
where o.category = 'Furniture'
group by subcategory 
order by orders_num desc
