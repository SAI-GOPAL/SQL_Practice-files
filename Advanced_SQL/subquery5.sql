SELECT sub.investor_permalink,count(*) as investments_made from
(SELECT *
  FROM tutorial.crunchbase_investments_part1

 UNION ALL

 SELECT *
   FROM tutorial.crunchbase_investments_part2) sub
   group by 1 order by 2 desc