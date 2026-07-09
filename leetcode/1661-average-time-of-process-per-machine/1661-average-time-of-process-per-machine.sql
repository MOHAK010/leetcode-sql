select s.machine_id, Round(avg(e.timestamp - s.timestamp)::numeric,3) as processing_time
from Activity s 
join Activity e 
on s.machine_id = e.machine_id 
and s.process_id = e.process_id 
and s.activity_type = 'start' 
and e.activity_type = 'end' 
group by s.machine_id;