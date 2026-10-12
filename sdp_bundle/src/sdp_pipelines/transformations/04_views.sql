CREATE VIEW ${catalog}.dev.gold_HourlyView
AS 
SELECT
  Region_name,
  Count_date,
  hour,
  SUM(Cars_and_taxis) AS Cars_and_taxis_sum
  FROM ${catalog}.dev.gold_materializedView
  GROUP BY Region_name,Count_date,hour ;


CREATE TEMPORARY VIEW gold_TempHourlyView
AS 
SELECT
  Region_name,
  Count_date,
  hour,
  SUM(Cars_and_taxis) AS Cars_and_taxis_sum
  FROM ${catalog}.dev.gold_materializedView
  GROUP BY Region_name,Count_date,hour;