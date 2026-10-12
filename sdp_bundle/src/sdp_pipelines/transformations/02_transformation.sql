CREATE OR REFRESH STREAMING TABLE ${catalog}.dev.roads_cleaned_sdp
(CONSTRAINT valid_records1 EXPECT("Region_name" IS NOT NULL) ON VIOLATION DROP ROW)
AS 
SELECT * FROM STREAM(${catalog}.dev.bronze_roads_sdp);


CREATE OR REFRESH STREAMING TABLE ${catalog}.dev.traffic_cleaned_sdp
(CONSTRAINT valid_records1 EXPECT("Year" IS NOT NULL) ON VIOLATION DROP ROW)
AS 
SELECT * FROM STREAM(${catalog}.dev.bronze_traffic_sdp)



