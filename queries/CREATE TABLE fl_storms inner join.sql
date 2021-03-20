CREATE TABLE fl_storms
AS
SELECT 
		"NA_Storms"."NUMBER", "NA_Storms"."SID", "NA_Storms"."NAME", "NA_Storms"."SEASON_Year", "NA_Storms"."NATURE", "NA_Storms"."LAT", "NA_Storms"."LON", "NA_Storms"."WMO_WIND_KTS", 
		"NA_Storms"."WMO_PRES", "NA_Storms"."STORM_SPEED_KTS", "NA_Storms"."STORM_DIR_degrees", "NA_Storms"."geohash"
FROM 
	"NA_Storms"
		
INNER JOIN target on "NA_Storms"."geohash" = "target"."geohash"