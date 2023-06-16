CREATE OR REPLACE VIEW SkodaAudiCars AS
SELECT *
FROM Cars
WHERE Name IN ('Skoda', 'Audi');

SELECT *
FROM SkodaAudiCars;
