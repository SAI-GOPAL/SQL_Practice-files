--Write a query that performs an inner join between the tutorial.crunchbase_acquisitions table and the tutorial.crunchbase_companies table, but instead of listing individual rows, count the number of non-null rows in each table.

select 
count(permalink) as companies_count,
count(company_permalink) as acquisitions_count
from 
tutorial.crunchbase_acquisitions acquisitions inner join tutorial.crunchbase_companies companies on  companies.permalink = acquisitions.company_permalink


