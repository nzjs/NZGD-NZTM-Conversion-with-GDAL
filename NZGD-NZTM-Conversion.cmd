echo off
cls
echo #	Convert from old and unprojected NZGD to proper NZTM

rem SET MapManagerOGR_HOME=C:\MapManager
SET MapManagerOGR_HOME=C:\OSGeo4W64\bin
SET GDAL_DATA=%MapManagerOGR_HOME%\
SET GDAL_DRIVER_PATH=%MapManagerOGR_HOME%\gdalplugins
SET PROJ_LIB=%MapManagerOGR_HOME%\ProjLib

rem Proper NZGD to NZTM conversions below
"%MapManagerOGR_HOME%\ogr2ogr.exe" -f "ESRI Shapefile" "C:\data\GIS\DATA\General\Cycleway\WCWT_NZTM.shp" "C:\data\GIS\DATA\General\Cycleway\WCWT.tab" -skipfailures -fieldTypeToString DateTime -s_srs "+proj=nzmg +lat_0=-41 +lon_0=173 +x_0=2510000 +y_0=6023150 +ellps=intl +datum=nzgd49 +units=m +nadgrids=C:\MapManager\ProjLib\nzgd2kgrid0005.gsb +wktext" -t_srs EPSG:2193

echo # Finished...
pause
