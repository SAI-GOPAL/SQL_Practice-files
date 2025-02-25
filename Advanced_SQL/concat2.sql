SELECT
location,
'(' || lat || ',' || lon || ')' as location_concat
from tutorial.sf_crime_incidents_2014_01