SELECT * FROM 
(select * from tutorial.sf_crime_incidents_2014_01
where descript='WARRANT ARREST') sub
WHERE RESOLUTION='NONE'