
select p.person, round(sum(o.sales)) as sales_manager_total
from orders o
join people p
on p.region = o.region
group by p.person 
order by sales_manager_total desc
;

select p.person, round(sum(o.sales)) as sales_manager_2016
from orders o 
join people p
on o.region = p.region
where extract('year' from o.order_date) = 2016
group by p.person
order by sales_manager_2016 desc
;

select p.person, round(sum(o.sales)) as sales_manager_2017
from orders o 
join people p
on o.region = p.region
where extract('year' from order_date) = 2017
group by p.person
order by sales_manager_2017 desc
;

select p.person, round(sum(o.sales)) as sales_manager_2018
from people p
join orders o
on p.region = o.region
where extract ('year' from o.order_date) = 2018
group by p.person 
order by sales_manager_2018 desc
;

select p.person, round(sum(o.sales)) as sales_manager_2019 
from orders o 
join people p
on o.region = p.region 
where extract('year' from o.order_date) = 2019
group by p.person 
order by sales_manager_2019 desc
;
