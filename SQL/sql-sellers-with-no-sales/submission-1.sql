select s.seller_name 
from seller s
where NOT EXISTS(select * from orders o where o.seller_id = s.seller_id and o.sale_date between '2020-01-01' and '2020-12-31')
order by s.seller_name asc