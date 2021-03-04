COPY target_data(INDEX, LON, LAT, geohash)
FROM 'c:\users\jbate\Data_Science\Final-Project\FL_data.csv'
DELIMITER ','
CSV HEADER;