####IFW specific variables
include(CPackIFW)

set(CPACK_IFW_ROOT "/home/osy/Qt/Tools/QtInstallerFramework/4.6/")
set(CPACK_IFW_VERBOSE ON)

set(CPACK_IFW_PRODUCT_URL "https://github.com/balabit/qlogsystem")

set(CPACK_IFW_PACKAGE_WINDOW_ICON "${CMAKE_SOURCE_DIR}/picture.png")
set(CPACK_IFW_PACKAGE_LOGO "${CMAKE_SOURCE_DIR}/picture.png")
set(CPACK_IFW_PACKAGE_BACKGROUND "${CMAKE_SOURCE_DIR}/picture.png")

set(CPACK_IFW_TARGET_DIRECTORY "@HomeDir@/.local/lib/qlogsystem")

set(CPACK_IFW_PACKAGE_ALLOW_NON_ASCII_CHARACTERS ON)

set(CPACK_IFW_ARCHIVE_FORMAT tar.gz)

CPACK_ADD_COMPONENT(qlogsystem-project
    REQUIRED
)

set(PACKAGES_DATA "../../../../../packages/libqlogsystem/data")
install(TARGETS qlogsystem DESTINATION ${PACKAGES_DATA} COMPONENT qlogsystem-project)
install(FILES 
    ${CMAKE_SOURCE_DIR}/README.md 
    DESTINATION ${PACKAGES_DATA}
    COMPONENT qlogsystem-project)


cpack_ifw_configure_component(qlogsystem-project
    FORCED_INSTALLATION
    NAME libqlogsystem
    DISPLAY_NAME "qlogsystem library"
    DESCRIPTION ${CPACK_PACKAGE_DIRECTORY} #${CPACK_PACKAGE_DESCRIPTION_SUMMARY}
    VERSION ${CPACK_PACKAGE_VERSION}
    LICENSES "License" "LICENSE"
)

set(CPACK_COMPONENTS_ALL qlogsystem-project)

