# citygml-docs

Welcome to City GML docs! 

In this project, we bench mark common operations performed on 3D City Database, a 3D geo database to store, represent 
and manage 3d city models on top of a relational database.

This repository contains tutorials for GIS related software

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/set_up_post_gres.PNG)
The methodology for our querying CityGML is the following: 
1.  Set up PostGres, PostGis

2. Enable PostGis Extension into database
3. Load any GML Data into 3D City Importer
4. Validate data
6. Import data into PostGres
7. Run queries in PostGres on the data The following sample
query was performed,
select * from citydb.building where measured_height>50;
4 RESULTS
In this section, we show what queries can be made in PostGres using
the 3DCity DB importer/exporter once everything is set up properly.
We have performed the following sample queries:

![Picture](https://github.com/readysetgit24/citygml-docs/blob/main/pictures/pipelie_photo.PNG)
