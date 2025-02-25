SELECT UPPER(LEFT(category,1)) || LOWER(substr(category,2,LENgth(category))) as captilized_category
FROM tutorial.sf_crime_incidents_2014_01