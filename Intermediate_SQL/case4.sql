select 
case when state IN ('CA','OR','WA') then 'West Coast'
when state='TX' then 'Texas'
else 'Other' end as Region,
count(*)
FROM benn.college_football_players
where weight>=300
group by 1