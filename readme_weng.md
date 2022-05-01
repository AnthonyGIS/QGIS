# git_pull_之后

(0) 判断是否需要更新新的编译环境，如CMake, OSGeo4W, Cygwin。

具体可参考 onenote: 0415 编译QGIS

备注：通常，当QGIS的dev版本更新很多时，需要考虑更新以上编译环境了。到底是否确切需要更新环境与否，可参考QGIS源码下的`INSTALL.md`。


(1) 打开运行环境，点击qgis-dev.bat  (推荐)
或 （不推荐的方式）
目录下进入到 `E:\Projs\algs\qgis\qgis_source2` ，Shift + 鼠标右击，打开powershell，然后输入`.\doc_weng\qgis-dev.bat`。

qgis-dev.bat 的内容如下：
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
path %PATH%;D:/Pros/IDE/IDE_Tools/cmake-windows/bin;D:/Pros/IDE/IDE_Tools/cygwin64/bin
@set GRASS_PREFIX=D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/grass/grass78
@set INCLUDE=%INCLUDE%;%OSGEO4W_ROOT%/include
@set LIB=%LIB%;%OSGEO4W_ROOT%/lib;%OSGEO4W_ROOT%/lib
set LIB=%LIB%;%OSGEO4W_ROOT%/apps/Qt5/lib;%OSGEO4W_ROOT%/lib
set INCLUDE=%INCLUDE%;%OSGEO4W_ROOT%/apps/Qt5/include;%OSGEO4W_ROOT%/include
@cmd

```

(2) cmake-gui

(3) config,  generate
备注: config后，注意添加 “WITH_3D, WITH_SERVER”

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


# 运行环境

qgis.env

```
PATH=E:/Projs/algs/qgis/qgis_source2/build/output/bin/Debug;D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/Python37;D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/Python37/Scripts;D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/qt5/bin;D:/Pros/Office/QGIS_Dev/OSGeo4W;C:/Windows/system32;C:/Windows;C:/Windows/system32/WBem

GDAL_DATA=D:/Pros/Office/QGIS_Dev/OSGeo4W/share/gdal
GDAL_DRIVER_PATH=D:/Pros/Office/QGIS_Dev/OSGeo4W/bin/gdalplugins
GDAL_FILENAME_IS_UTF8=YES
GEOTIFF_CSV=D:/Pros/Office/QGIS_Dev/OSGeo4W/share/epsg_csv
JPEGMEM=1000000

OSGEO4W_ROOT=D:/Pros/Office/QGIS_3_20_1
PROJ_LIB=D:/Pros/Office/QGIS_3_20_1/share/proj
PYTHONHOME=D:/Pros/Office/QGIS_3_20_1/apps/Python37
PYTHONPATH=D:/Pros/Office/QGIS_3_20_1/apps/Python37;D:/Pros/Office/QGIS_3_20_1/apps/Python37/Scripts

QGIS_PREFIX_PATH=E:/Projs/algs/qgis/qgis_source2/build/output
QT_PLUGIN_PATH=D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/qgis/qtplugins;D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/qt5/plugins
VSI_CACHE=TRUE
VSI_CACHE_SIZE=1000000
O4W_QT_PREFIX=D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/Qt5
O4W_QT_BINARIES=D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/Qt5/bin
O4W_QT_PLUGINS=D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/Qt5/plugins
O4W_QT_LIBRARIES=D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/Qt5/lib
O4W_QT_TRANSLATIONS=D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/Qt5/translations
O4W_QT_HEADERS=D:/Pros/Office/QGIS_Dev/OSGeo4W/apps/Qt5/include
```


# start_crssync.bat
```
@echo off
set OSGEO4W_ROOT=D:/Pros/Office/QGIS_Dev/OSGeo4W
call "%OSGEO4W_ROOT%/bin/o4w_env.bat"
call "%OSGEO4W_ROOT%/bin/py3_env.bat"
call "%OSGEO4W_ROOT%/bin/qt5_env.bat"
path %PATH%;D:\Pros\IDE\VS_LIBS\vcpkg\vcpkg\installed\x64-windows\bin;E:\Projs\algs\qgis\install\bin;
call "E:\Projs\algs\qgis\install\bin\crssync.exe"  --verbose
@cmd
```
