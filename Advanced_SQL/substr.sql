SELECT incidnt_num,
date,
SUBSTR(date,7,4) || '-' || SUBSTR(date,1,2) || '-' || SUBSTR(date,4,2) as date_modified
FROM tutorial.sf_crime_incidents_2014_01