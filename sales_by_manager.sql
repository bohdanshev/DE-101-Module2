select p.person, sum(o.sales) as sales_region
from people p
join orders o
on p.region = o.region
where p.region = o.region
group by p.person 
order by sales_region desc

select p.person, sum(o.sales) as sales_region
from people p
join orders o
on p.region = o.region
where p.region = o.region
group by p.person 
order by sales_region desc
