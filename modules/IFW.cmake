####IFW specific variables
include(CPackIFW)

set(CPACK_IFW_ROOT "/home/osy/Qt/Tools/QtInstallerFramework/4.6/")

set(CPACK_GENERATOR IFW)

set(CPACK_IFW_VERBOSE ON)

set(CPACK_IFW_PRODUCT_URL "https://github.com/balabit/qlogsystem")

set(CPACK_IFW_TARGET_DIRECTORY "@HomeDir@/.local/lib/qlogsystem")

#set (CPACK_IFW_PACKAGE_NAME "qlogsystemP")
#set (CPACK_IFW_PACKAGE_TITLE "qlogsystemPack")

CPACK_ADD_COMPONENT(qlogsystem-project
    REQUIRED
)

install(TARGETS qlogsystem DESTINATION lib COMPONENT qlogsystem-project)
install(FILES 
    ${CMAKE_SOURCE_DIR}/README.md 
    ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}/libqlogsystem.a 
    DESTINATION lib #"@TargetDir@" 
    COMPONENT qlogsystem-project)


cpack_ifw_configure_component(qlogsystem-project
    FORCED_INSTALLATION
    NAME libqlogsystem
    DISPLAY_NAME "qlogsystem library"
    DESCRIPTION ${CPACK_IFW_ROOT} #${CPACK_PACKAGE_DESCRIPTION_SUMMARY}
    VERSION ${CPACK_PACKAGE_VERSION}
    LICENSES "License" "LICENSE"
)

set(CPACK_COMPONENTS_ALL qlogsystem-project)