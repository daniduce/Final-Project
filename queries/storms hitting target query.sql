CREATE TABLE fl_storms
AS
SELECT id, name, wmo_wind_kts, geohash
FROM na_storm_data
UNION
SELECT id, lon, lat, geohash
FROM target_data
WHERE "target_data.geohash" = "na_storm_data.geohash";