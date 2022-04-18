select sum(f.capacity) as capacity
from FLIGHTS f, MONTHS m
where f.month_id = m.mid and
m.month = 'July' and
f.day_of_month = 10 and
((F.origin_city = 'Seattle WA' and F.dest_city = 'San Francisco CA') or (F.dest_city = 'Seattle WA' and F.origin_city = 'San Francisco CA'));
