select c.name as carrier, max(f.price) as max_price
from FLIGHTS f, CARRIERS c
where f.carrier_id = c.cid and
((F.origin_city = 'Seattle WA' and F.dest_city = 'New York NY') or (F.dest_city = 'Seattle WA' and F.origin_city = 'New York NY'))
group by c.name;