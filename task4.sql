CREATE TABLE TrainSchedule (
    train_id INT,
    station VARCHAR(50),
    stationtime_time TIME,
    time_to_next_station TIME
);

INSERT INTO TrainSchedule (train_id, station, stationtime_time, time_to_next_station)
VALUES
    (110, 'San Francisco', '10:00:00', NULL),
    (110, 'Redwood City', '10:54:00', NULL),
    (110, 'Palo Alto', '11:02:00', NULL),
    (110, 'San Jose', '12:35:00', NULL),
    (120, 'San Francisco', '11:00:00', NULL),
    (120, 'Palo Alto', '12:49:00', NULL),
    (120, 'San Jose', '13:30:00', NULL);
    
    
CREATE TABLE TrainSchedule1 AS
SELECT
  train_id,
  station,
  stationtime_time,
  LEAD(stationtime_time) OVER (PARTITION BY train_id ORDER BY stationtime_time) - stationtime_time AS time_to_next_station

FROM
  TrainSchedule;

SELECT * FROM TrainSchedule1;
