select COUNT(f.flight_num) as flight_num
from FLIGHTS f
where origin_city == "Seattle WA" and
dest_city == "Boston MA" and
carrier_id == "AA";
