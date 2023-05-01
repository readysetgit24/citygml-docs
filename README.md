# citygml-docs

Welcome to City GML docs! 

In this project, we bench mark common operations performed on 3D City Database, a 3D geo database to store, represent 
and manage 3d city models on top of a relational database. Previous works are very meticulous and detailed, so in this repository we aim to show a simple process to querying City GML data. 

This repository contains tutorials for GIS related software. The src folder contains the SQL queries written in this project. The data folder contains all the datasets used in this project to run the queries.

The pipeline for querying CityGML data was the following: 

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/pipelie_photo.PNG)

The methodology for our querying CityGML is the following: 

## Set up PostGres, PostGis
1. Download and install postGRES https://www.postgresql.org/download/
2. In the stack builder, choose the latest version of PostGIS

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/set_up_post_gres.PNG)



## Installing Importer/Exporter Tool
Download the latest version of the Importer/Exporter tool from here https://github.com/3dcitydb/importer-exporter/releases



## 3D City Database Setup
1. Open pgAdmin 

2. Select the server of interest and fill the fields as shown in the figure below

3. Create a new database
4. Enable postGIS in the database by running this command

`CREATE EXTENSION postgis;`

5. Go to the 3D City Importer/Exporter folder. Edit the `CONNECTION_DETAILS.bat` file as shown in the figure below

6. Run the `Create_DB.bat` file and use the following values `SRID: 25833` and  
`height system: 0`

7. Enter `urn:ogc:def:crs,crs:EPSG:6.12:25833,crs:EPSG:6.12:5783` when asked for the srsName. 

8. Open 3D City Database Importer/Exporter and connect the database 

`**Insert image 10**`

## Download sample data

1. Download CityGML data - http://www.3dcitydb.net/3dcitydb/fileadmin/TUM_Workshop/RTG_Schulungskurs_2016.zip

2. Click on the Import tab to activate the CityGML-Importer window (see the following
screenshot)

3. Click the Browse button to open a file selection dialog and select the CityGML file to be imported. The CityGML file used in this tutorial is located in the path below:
“C:\RTG_Schulungskurs_2016\CityGML-Data\ Berlin_CityGML_Lod2.gml”

4. Click on the Just validate button to run the validation process. 

5. After validating, click on "Import" to load the CityGML data to postGRES

## Running Queries 

### PostGRES Sample Query 
`SELECT * 
FROM citydb.building 
WHERE measured_height > 50` 

### PostGIS Sample Queries 

`SELECT * 
FROM citydb.building 
WHERE ST_Intersects(building, ST_MakeEnvelope(-74.006, 40.712, -73.992, 40.725, 4326))`

`SELECT ST_Area(geom)/10000 AS hectares FROM bc_municipality
WHERE name = 'PRINCE GEORGE'`

`SELECT name, ST_Area(geom)/10000 AS hectares FROM bc_municipality ORDER BY hectares DESC LIMIT 1`


## Installing FME Data Inspector
 To view the exported GML files, we need a 3D visualizer. One can request for an academic license of the FME Suite - 
 https://fme.safe.com/accelerator/

## Exporting GML 

1. Go to the Export tab
2. Select Bounding Box 
3. Click on the map icon 

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/11_bounding_box.png)

4. Search "Strelitzer Straße, Mitte, Berlin, 10115, Germany"
5. Hold `alt` and drag a box on the map

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/12_selecting_area.png)

6. Click apply 
7. In the 3Dcity Export tab, click the "Export" button. 
8. Open the exported GML in FME Data Inspector. 

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/13_FME_data_inspector.png)




<!--

gml srsName - ``

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/load_anycity_gml_data.PNG)
![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/extension2.PNG)

1. Validate data

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/validate_data.PNG)

5. Import data into PostGres

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/importing_data_set.PNG)

6. Run queries in PostGres on the data 

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/run_post_gres_queries.PNG)

7. Analyze Results


![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/results.PNG)

-->
