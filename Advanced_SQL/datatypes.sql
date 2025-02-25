select 
cast(funding_total_usd as varchar) as funding_total_usd_str,
founded_at_clean::VARCHAR as founded_at_clean_str
from tutorial.crunchbase_companies_clean_date

--Convert the funding_total_usd and founded_at_clean columns i