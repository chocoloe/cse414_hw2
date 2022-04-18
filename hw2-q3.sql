select w.day_of_week as day_of_week, AVG(f.arrival_delay) as arrival_delay
from FLIGHTS f, WEEKDAYS w
where f.day_of_week_id = w.did
group by w.day_of_week
order by f.arrival_delay
limit 1;
