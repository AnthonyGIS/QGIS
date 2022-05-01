@echo off
set OSGEO4W_ROOT=D:/Pros/Office/QGIS_Dev
call "%OSGEO4W_ROOT%/bin/o4w_env.bat"
call "%OSGEO4W_ROOT%/bin/py3_env.bat"
call "%OSGEO4W_ROOT%/bin/qt5_env.bat"
path %PATH%;D:\Pros\IDE\VS_LIBS\vcpkg\vcpkg\installed\x64-windows\bin;E:\Projs\algs\tools\qgis\install\bin;
call "E:\Projs\algs\tools\qgis\install\bin\crssync.exe"  --verbose
@cmd
