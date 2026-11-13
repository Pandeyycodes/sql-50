Select a1.machine_id, Round(avg(a2.timestamp-a1.timestamp),3) as processing_time
From Activity a1 inner join activity a2
on a1.machine_id = a2.machine_id
and a1.process_id = a2.process_id
where a1.activity_type = 'start'
and a2.activity_type = 'end'
group by a1.machine_id
-- SELF JOIN matches start and end records of the same process.
-- Calculate end timestamp - start timestamp.
-- GROUP BY gives the average separately for each machine.
