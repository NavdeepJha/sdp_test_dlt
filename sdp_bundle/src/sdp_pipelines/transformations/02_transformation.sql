CREATE OR REFRESH STREAMING TABLE sdp_catalog.silver.roads_cleaned_sdp
(CONSTRAINT valid_records1 EXPECT("Region_name" IS NOT NULL) ON VIOLATION DROP ROW)
AS 
SELECT * FROM STREAM(sdp_catalog.bronze.bronze_roads_sdp);


CREATE OR REFRESH STREAMING TABLE sdp_catalog.silver.traffic_cleaned_sdp
(CONSTRAINT valid_records1 EXPECT("Year" IS NOT NULL) ON VIOLATION DROP ROW)
AS 
SELECT * FROM STREAM(sdp_catalog.bronze.bronze_traffic_sdp)



