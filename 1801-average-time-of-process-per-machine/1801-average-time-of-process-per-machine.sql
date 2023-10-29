With Process_times as(
         select b.machine_id,
         b.process_id,
         ROUND(avg(b.timestamp-a.timestamp),3) processing_time        
        from activity a JOIN activity b
        ON a.machine_id=b.machine_id
        and a.process_id=b.process_id
        and a.activity_type='start' and b.activity_type='end'
         group by b.machine_id
)
select machine_id,
       processing_time
from process_times
group by machine_id;