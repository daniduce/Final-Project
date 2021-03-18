CREATE TABLE NA_Storms_Summary
AS
SELECT DISTINCT ON ("NA_Storms"."NAME")
		"NA_Storms"."NUMBER", "NA_Storms"."NAME", "NA_Storms"."SEASON_Year", "NA_Storms"."ISO_TIME", "NA_Storms"."NATURE", "NA_Storms"."LAT", "NA_Storms"."LON", "NA_Storms"."WMO_WIND_KTS", 
		"NA_Storms"."WMO_PRES", "NA_Storms"."STORM_SPEED_KTS", "NA_Storms"."STORM_DIR_degrees", "NA_Storms"."geohash", "NA_Storms"."geohash2", "NA_Storms"."Strike_Target"
FROM 
	"NA_Storms"
		
INNER JOIN "origin_end_time" on "NA_Storms"."ISO_TIME" = "origin_end_time"."origin_time"