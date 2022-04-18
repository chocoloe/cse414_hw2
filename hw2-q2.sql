select c.name as name, f.fid as f1_flight_num, f.origin_city as f1_origin_city, f.dest_city as f1_dest_city, f.actual_time as  f1_actual_time, 
from FLIGHTS f, CARRIERS c, WEEKDAYS w, MONTHS m
where f.day_of_week_id = w.did and
f.carrier_id = c.cid and
f.month_id = m.mid and
f.actual_time < 420 and
f.flight_num = 2 and
f.origin_city = 'Seattle WA' and
f.dest_city = 'Boston MA' and
m.month = 'July' and
f.day_of_month = '15' and

