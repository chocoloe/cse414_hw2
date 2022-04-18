select c.name as name, sum(f.departure_delay) as delay
from FLIGHTS f, CARRIERS c
where f.carrier_id = c.cid
group by c.cid;
