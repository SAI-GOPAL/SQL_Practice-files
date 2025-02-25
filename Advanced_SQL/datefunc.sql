select 
DATE_TRUNC('week'   , cleaned_date)::date AS week_begining,
count(*) as no_of_incidents
FROM tutorial.sf_crime_incidents_cleandate
group by 1
order by 1