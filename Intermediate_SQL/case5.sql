
select 
case when year in ('FR','SO') then 'underclass'
when year in ('JR','SR') then 'upperclass'
else null end as class_group,
sum(weight)
 FROM benn.college_football_players
where state='CA'
 group by 1