-- Please edit the sample below
CREATE MATERIALIZED VIEW ${catalog}.dev.gold_materializedView AS
SELECT
  TR.Record_ID,
  TR.Count_point_id,
  TR.Direction_of_travel,
  TR.Year,
  TR.Count_date,
  TR.hour,
  TR.Region_id,
  TR.Region_name,
  TR.Local_authority_name,
  TR.Road_name,
  TR.Road_Category_ID,
  TR.Start_junction_road_name,
  TR.End_junction_road_name,
  TR.Latitude,
  TR.Longitude,
  TR.Link_length_km,
  TR.Pedal_cycles,
  TR.Two_wheeled_motor_vehicles,
  TR.Cars_and_taxis,
  TR.Buses_and_coaches,
  TR.LGV_Type,
  RR.Road_ID
FROM ${catalog}.dev.traffic_cleaned_sdp AS TR
JOIN ${catalog}.dev.roads_cleaned_sdp AS RR
ON TR.Road_Category_ID = RR.Road_category_id;