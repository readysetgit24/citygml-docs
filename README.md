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


![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/extension2.PNG)

## Load any GML Data into 3D City Importer
The data used can be found in the 'data' folder of this repository.

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/load_anycity_gml_data.PNG)


## Validate data

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/validate_data.PNG)

## Import data into PostGres

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/importing_data_set.PNG)

## Run queries in PostGres on the data 
Here the query we are running is selecting all buildings from the dataset that have a height over 50 hectameters.
![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/run_post_gres_queries.PNG)

## Analyze Results


![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/results.PNG)

