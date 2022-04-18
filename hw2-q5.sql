select c.name as name, 100 * AVG(f.canceled) as percentage
from FLIGHTS f, CARRIERS c
where f.carrier_id = c.cid and
f.origin_city = 'Seattle WA'
group by c.name 
having AVG(f.canceled) > 0.005
order by AVG(f.canceled);