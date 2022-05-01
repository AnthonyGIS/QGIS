#
# weng for qgis test folders. 20.4.27
# set_target_properties(clean-staged-${plugin} PROPERTIES FOLDER ${QGIS_ZZZ_ROOT_FOLDER}/)
set_target_properties(libdxfrw PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
set_target_properties(qgis PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
if (WITH_3D)
  set_target_properties(qgis_3d PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
  set_target_properties(qgis_3d_sandbox PROPERTIES FOLDER ${QGIS_CORE_ROOT_FOLDER}/)
endif()
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
if(WITH_SERVER)
  set_target_properties(qgis_server_full PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
  set_target_properties(wms PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
  set_target_properties(wms_static PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
  set_target_properties(wfs PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
  set_target_properties(wcs PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
  set_target_properties(wfs3 PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
  set_target_properties(wmts PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
  set_target_properties(qgis_server PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
  set_target_properties(qgis_mapserver PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)

  set_target_properties(qgis_mapserv.fcgi PROPERTIES FOLDER ${QGIS_SERVER_ROOT_FOLDER}/)
endif()


# authmethod
set_target_properties(authmethod_apiheader PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_basic PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_esritoken PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_identcert PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_maptilerhmacsha256 PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_oauth2 PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_pkcs12 PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_pkipaths PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)

set_target_properties(authmethod_apiheader_a PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_basic_a PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_esritoken_a PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_identcert_a PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_maptilerhmacsha256_a PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_oauth2_a PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_pkcs12_a PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)
set_target_properties(authmethod_pkipaths_a PROPERTIES FOLDER ${QGIS_AUTH_ROOT_FOLDER}/)



# PROVIDER
set_target_properties(provider_arcgisfeatureserver PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_arcgisfeatureserver_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_arcgisfeatureserver_gui_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_arcgismapserver PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_arcgismapserver_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_delimitedtext PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_delimitedtext_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_delimitedtext_gui_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_geonode PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_gpx PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_mdal PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_mssql PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_mssql_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_postgres PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_postgres_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_postgres_gui_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_postgresraster PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_postgresraster_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_spatialite PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_spatialite_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_spatialite_gui_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_virtuallayer PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_virtuallayer_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_virtuallayer_gui_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_virtualraster PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_wcs PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_wcs_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_wcs_gui_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_wfs PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_wfs_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_wfs_gui_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_wms PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_wms_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
set_target_properties(provider_wms_gui_a PROPERTIES FOLDER ${QGIS_PROVIDER_ROOT_FOLDER}/)
