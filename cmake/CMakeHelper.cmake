# for folders in vs studio .sln projects.
# added by weng. 20.4.27


# Enable solution folders.
set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set(CMAKE_TARGETS_ROOT_FOLDER "_build")
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER ${CMAKE_TARGETS_ROOT_FOLDER})

set(QGIS_CORE_ROOT_FOLDER "_core")
set(QGIS_QGIS_LIBS_ROOT_FOLDER "_qgis")
set(QGIS_PYTHON_APP_ROOT_FOLDER "_python")
set(QGIS_QGIS_TEST_ROOT_FOLDER "_qgis_test")
set(QGIS_ABOUT_ROOT_FOLDER "about")
set(QGIS_ZZZ_ROOT_FOLDER "zzz")
set(QGIS_AUTH_ROOT_FOLDER "authmethod")
set(QGIS_PROVIDER_ROOT_FOLDER "provider")
set(QGIS_SERVER_ROOT_FOLDER "server")


# Wrapper for test executables.
# macro(QGIS_ADD_TEST TARGET_NAME)
#    if(TESTS_ENABLED)
#        # ${ARGN} will store the list of source files passed to this function.
#        add_executable(${TARGET_NAME} ${ARGN})
#        set_target_properties(${TARGET_NAME} PROPERTIES FOLDER ${QGIS_QGIS_TEST_ROOT_FOLDER}/${FOLDER_NAME})
#        target_link_libraries(${TARGET_NAME} colmap ${Boost_UNIT_TEST_FRAMEWORK_LIBRARY})
#        add_test("${FOLDER_NAME}/${TARGET_NAME}" ${TARGET_NAME})
#        if(IS_MSVC)
#            install(TARGETS ${TARGET_NAME} DESTINATION bin/)
#        endif()
#    endif()
#endmacro(QGIS_ADD_TEST)

