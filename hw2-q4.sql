select distinct c.name as name
from FLIGHTS f, CARRIERS c
where f.carrier_id = c.cid
group by f.day_of_month, f.month_id, c.name
having count(*) > 1000;