/*23.top_country.sql: Which country's customers spent the most?*/
select s.country as customercountry,max(s.totalsales) as total_spend
from(select c.country,sum(i.total) as totalsales 
from customer c,invoice i 
where c.customerid=i.customerid
group by c.country) s;
