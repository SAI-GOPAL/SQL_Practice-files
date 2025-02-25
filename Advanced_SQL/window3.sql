 select start_terminal,
 start_time,
 duration_seconds,rank from 
 (select start_terminal,
 start_time,
 duration_seconds,
        RANK() OVER (PARTITION BY start_terminal
                    ORDER BY duration_seconds desc)
              AS rank
 FROM tutorial.dc_bikeshare_q1_2012
 WHERE start_time < '2012-01-08') sub
 where rank<=5