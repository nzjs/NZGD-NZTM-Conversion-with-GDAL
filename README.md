# NZGD->NZTM Conversion with GDAL Tools

Takes a source GIS dataset in NZMG/unprojected and properly converts it to NZTM projection using GDAL/ogr2ogr.

Eg. 
```
ogr2ogr.exe -f "<DESTINATION FORMAT>" "<DESTINATION FILE>" "<SOURCE FILE>" -skipfailures -fieldTypeToString DateTime -s_srs "+proj=nzmg +lat_0=-41 +lon_0=173 +x_0=2510000 +y_0=6023150 +ellps=intl +datum=nzgd49 +units=m +nadgrids=C:\MapManager\ProjLib\nzgd2kgrid0005.gsb +wktext" -t_srs EPSG:2193
```
