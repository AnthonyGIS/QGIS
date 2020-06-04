#
# weng for qgis test folders. 20.4.27
# set_target_properties(clean-staged-${plugin} PROPERTIES FOLDER ${QGIS_ZZZ_ROOT_FOLDER}/)
set_target_properties(libdxfrw PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(mdalprovider PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(owsprovider PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(postgresprovider PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(qgis PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(qgis_3d PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(qgis_analysis PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(qgis_app PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(qgis_core PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(qgis_desktop PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(qgis_gui PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(qgis_native PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(ui PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(version PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)


# uninstall
set_target_properties(uninstall PROPERTIES FOLDER ${CMAKE_TARGETS_ROOT_FOLDER}/)  # weng for qgis test folders. 20.4.27



# server
# not all server about projects.
# weng for qgis test folders. 20.4.29
set_target_properties(qgis_server_full PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
set_target_properties(wms PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
set_target_properties(wfs PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
set_target_properties(wcs PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
set_target_properties(wfs3 PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
set_target_properties(wmts PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
set_target_properties(qgis_server PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)

set_target_properties(qgis_mapserv.fcgi PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
set_target_properties(qgis_serverquerystringparametertest PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
