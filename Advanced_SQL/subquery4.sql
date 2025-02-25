SELECT COALESCE(acquisitions.Quarter, investments.Quarter) AS Quarter,
       acquisitions.companies_acquired,
       investments.companies_rec_investment
  FROM (
        SELECT acquired_quarter AS Quarter,
               COUNT(DISTINCT company_permalink) AS companies_acquired
          FROM tutorial.crunchbase_acquisitions
          where acquired_quarter>='2012-Q1'
         GROUP BY 1
       ) acquisitions

  FULL JOIN (
        SELECT funded_quarter AS Quarter,
               COUNT(DISTINCT company_permalink) AS companies_rec_investment
          FROM tutorial.crunchbase_investments
          where funded_quarter>='2012-Q1'
         GROUP BY 1
       )investments

    ON acquisitions.Quarter = investments.Quarter
 ORDER BY 1