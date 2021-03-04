CREATE TABLE NA_Storm_Data (
id SERIAL,
INDEX VARCHAR (7),
SID VARCHAR (50),
SEASON_YEAR VARCHAR (6),
NUMBER VARCHAR (4),
BASIN VARCHAR (4),
NAME VARCHAR (20),	
ISO_TIME VARCHAR (25),
NATURE VARCHAR (5),
LAT VARCHAR (25),
LON VARCHAR (25),
WMO_WIND_KTS VARCHAR (5),
WMO_PRES VARCHAR (7),
STORM_SPEED_KTS VARCHAR (5),
STORM_DIR_degrees VARCHAR (5),
geohash VARCHAR (6),
PRIMARY KEY (id)
)