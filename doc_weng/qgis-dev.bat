@echo off
call "C:/Program/Dev/Microsoft Visual Studio/2022/Preview/VC/Auxiliary/Build/vcvarsall.bat" x64
set INCLUDE=%INCLUDE%;C:/Windows Kits/10/Lib/Include
set LIB=%LIB%;C:/Windows Kits/10/Lib
set OSGEO4W_ROOT=D:/Pros/Office/QGIS_Dev
call "%OSGEO4W_ROOT%/bin/o4w_env.bat"
call "%OSGEO4W_ROOT%/bin/py3_env.bat"
call "%OSGEO4W_ROOT%/bin/qt5_env.bat"
set O4W_ROOT=%OSGEO4W_ROOT:/=/%
set LIB_DIR=%O4W_ROOT%
path %PATH%;D:/Pros/IDE/IDE_Tools/cmake-windows/bin;D:/Pros/IDE/IDE_Tools/cygwin64/bin
@set GRASS_PREFIX=D:/Pros/Office/QGIS_Dev/apps/grass/grass80
@set INCLUDE=%INCLUDE%;%OSGEO4W_ROOT%/include
@set LIB=%LIB%;%OSGEO4W_ROOT%/lib;%OSGEO4W_ROOT%/lib
set LIB=%LIB%;%OSGEO4W_ROOT%/apps/Qt5/lib;%OSGEO4W_ROOT%/lib
set INCLUDE=%INCLUDE%;%OSGEO4W_ROOT%/apps/Qt5/include;%OSGEO4W_ROOT%/include
@cmd
