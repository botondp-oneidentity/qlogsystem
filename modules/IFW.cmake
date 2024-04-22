####IFW specific variables
include(CPackIFW)

set(CPACK_IFW_PRODUCT_URL "https://github.com/balabit/qlogsystem")

set(CPACK_IFW_TARGET_DIRECTORY "@HOMEDIR@/.local/lib/qlogsystem")

set(cpack_ifw_configure_file "libqlogsyste.a" ${CPACK_IFW_TARGET_DIRECTORY})

set(CPACK_COMPONENTS_ALL qlogsystem-project)

cpack_ifw_configure_component(qlogsystem-project
    FORCED_INSTALLATION
    REQUIRES_ADMIN_RIGHTS
    DISPLAY_NAME "qlogsystem"
    DESCRIPTION ${CPACK_PACKAGE_DESCRIPTION_SUMMARY}
    VERSION ${CPACK_PACKAGE_VERSION}
    LICENSES "License" "LICENSE"
    DEFAULT "true")