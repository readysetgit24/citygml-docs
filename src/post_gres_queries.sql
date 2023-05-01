SELECT *  FROM citydb.building  WHERE measured_height > 50;
SELECT *  FROM citydb.building  WHERE ST_Intersects(building, ST_MakeEnvelope(-74.006, 40.712, -73.992, 40.725, 4326));

SELECT ST_Area(geom)/10000 AS hectares FROM bc_municipality WHERE name = 'PRINCE GEORGE';

SELECT name, ST_Area(geom)/10000 AS hectares FROM bc_municipality ORDER BY hectares DESC LIMIT 1;