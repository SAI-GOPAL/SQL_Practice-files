select 
player_name,
height,
case when height=0 then 'Missing'
when height>0 and height<=30 then 'Short'
when height>30 and height<=60 then 'Medium'
when height>60 then 'Tall'
end as Height_category
FROM benn.college_football_players