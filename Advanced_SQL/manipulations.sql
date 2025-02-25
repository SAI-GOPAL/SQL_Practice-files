SELECT
location,
trim(leading '(' from left(location,position(',' in location)-1)) as lat_split,
trim(TRAILING ')' from right(location,position(',' in location))) as Lon_split
from tutorial.sf_crime_incidents_2014_01