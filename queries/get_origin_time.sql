CREATE TABLE origin_end_time
AS
SELECT  "NA_Storms"."NAME"
       , min("ISO_TIME") as "origin_time"
       , CASE WHEN count(*) > 1 THEN max("ISO_TIME") END AS "end_time"
FROM   "NA_Storms"
GROUP by "NA_Storms"."NAME"