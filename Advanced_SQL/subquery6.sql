SELECT sub.investor_permalink,count(*) as investments_made from
(SELECT *
  FROM tutorial.crunchbase_investments_part1

 UNION ALL

 SELECT *
   FROM tutorial.crunchbase_investments_part2) sub  join tutorial.crunchbase_companies companies on sub.company_permalink=companies.permalink 
   where companies.status='operating'
   group by 1 order by 2 desc