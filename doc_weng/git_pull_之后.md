

(1) 打开运行环境，点击qgis-dev.bat

```
@echo off
call "C:/Program/Dev/Microsoft Visual Studio/2017/Enterprise/VC/Auxiliary/Build/vcvarsall.bat" x64
set INCLUDE=%INCLUDE%;C:/Windows Kits/10/Lib/Include
set LIB=%LIB%;C:/Windows Kits/10/Lib
set OSGEO4W_ROOT=D:/Pros/Office/QGIS_Dev/OSGeo4W
call "%OSGEO4W_ROOT%/bin/o4w_env.bat"
call "%OSGEO4W_ROOT%/bin/py3_env.bat"
call "%OSGEO4W_ROOT%/bin/qt5_env.bat"
set O4W_ROOT=%OSGEO4W_ROOT:/=/%
set LIB_DIR=%O4W_ROOT%
path %PATH%;D:/Pros/IDE/IDE Tools/cmake-3.17.1-win64-x64/bin;D:/Pros/IDE/IDE Tools/cygwin64/bin
@set GRASS_PREFIX=D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/grass/grass78
@set INCLUDE=%INCLUDE%;%OSGEO4W_ROOT%/include
@set LIB=%LIB%;%OSGEO4W_ROOT%/lib;%OSGEO4W_ROOT%/lib
set LIB=%LIB%;%OSGEO4W_ROOT%/apps/Qt5/lib;%OSGEO4W_ROOT%/lib
set INCLUDE=%INCLUDE%;%OSGEO4W_ROOT%/apps/Qt5/include;%OSGEO4W_ROOT%/include
@cmd
```

(2) cmake-gui

(3) config,  generate

(4) 修改 build文件夹下的cmake_install。

```bash
build/cmake_install.cmake
change
D:\Pros\Office\QGIS_Dev\OSGeo4W\apps\Python37\sip
to
D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/Python37/sip
```

(5) 打开vs开始编译 qgis工程。

(6) 编译完后，可以全部编译 ALL_Build，然后INSTALL。
运行前，将此目录下的qgis.env拷贝到安装后的qgis.exe的同一目录下即可。
