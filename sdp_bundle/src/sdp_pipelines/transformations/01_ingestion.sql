-- Bronze layer: ingest raw roads data from upstream streaming table
CREATE OR REFRESH STREAMING TABLE ${catalog}.dev.bronze_roads_sdp
AS SELECT 
  `Road ID`                   AS Road_ID,
  `Road category id`          AS Road_category_id,
  `Road category`             AS Road_category,
  `Region id`                 AS Region_id,
  `Region name`               AS Region_name,
  `Total link length km`      AS Total_link_length_km,
  `Total link length miles`   AS Total_link_length_miles,
  `All motor vehicles`        AS All_motor_vehicles
FROM STREAM read_files("/Volumes/sdp_catalog/volume_schema/landing_volume/raw_roads/*.csv",
format => "csv",
header => True,
inferSchema => True);

CREATE OR REFRESH STREAMING TABLE ${catalog}.dev.bronze_traffic_sdp
AS SELECT 
  `Record ID`                  AS Record_ID,
  `Count point id`             AS Count_point_id,
  `Direction of travel`        AS Direction_of_travel,
  `Year`                       AS Year,
  `Count date`                 AS Count_date,
  `hour`                       AS hour,
  `Region id`                  AS Region_id,
  `Region name`                AS Region_name,
  `Local authority name`       AS Local_authority_name,
  `Road name`                  AS Road_name,
  `Road Category ID`           AS Road_Category_ID,
  `Start junction road name`   AS Start_junction_road_name,
  `End junction road name`     AS End_junction_road_name,
  `Latitude`                   AS Latitude,
  `Longitude`                  AS Longitude,
  `Link length km`             AS Link_length_km,
  `Pedal cycles`               AS Pedal_cycles,
  `Two wheeled motor vehicles` AS Two_wheeled_motor_vehicles,
  `Cars and taxis`             AS Cars_and_taxis,
  `Buses and coaches`          AS Buses_and_coaches,
  `LGV Type`                   AS LGV_Type,
  `HGV Type`                   AS HGV_Type,
  `EV Car`                     AS EV_Car,
  `EV Bike`                    AS EV_Bike 
FROM STREAM read_files("/Volumes/sdp_catalog/volume_schema/landing_volume/raw_traffic/*.csv",
format => "csv",
header => True,
inferSchema => True);

