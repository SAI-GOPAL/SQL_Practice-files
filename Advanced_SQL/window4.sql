  select 
  duration_seconds,
  NTILE(100) over(order by duration_seconds) as percentile
  from tutorial.dc_bikeshare_q1_2012
 WHERE start_time < '2012-01-08'
 order by 1 desc