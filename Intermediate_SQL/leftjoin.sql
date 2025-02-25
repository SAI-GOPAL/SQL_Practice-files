--Write a query that performs an inner join between the tutorial.crunchbase_acquisitions table and the tutorial.crunchbase_companies table, but instead of listing individual rows, count the number of non-null rows in each table.

select 
count(company_permalink) as acquisitions_count,
count(permalink) as companies_count

from 
tutorial.crunchbase_acquisitions acquisitions left JOIN tutorial.crunchbase_companies companies on  companies.permalink = acquisitions.company_permalink


