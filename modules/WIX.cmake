include(CPackWIX)

wix_add_project(libqlogsystem 
    qlogsystem.wxs
    OUTPUT_NAME "qlogsystem"
    )

set(CPACK_GENERATOR WIX)
set(CPACK_WIX_UPGRADE_GUID 21045d6a-016c-11ef-8ff5-4f5ef4a711f6)
set(CPACK_WIX_LICENSE_RTF "")