select sub.category,
AVG(sub.incidents_count) as Avg_monthly_incidents
from
(
select 
category,
EXTRACT('month' from cleaned_date) as month,
count(*) as incidents_count
from tutorial.sf_crime_incidents_cleandate
group by 1,2) sub
group by 1