set(CPACK_WIX_VERSION 4)

#For replacing upgrade use a specific GUID with the syntax of XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX:
#set(CPACK_WIX_UPGRADE_GUID )

set(CPACK_WIX_LICENSE_RTF ${CMAKE_SOURCE_DIR}/safeguard_sta.rtf)
set (CPACK_WIX_PRODUCT_ICON ${CMAKE_SOURCE_DIR}/picture.png)

#This image must be 493 by 58 pixels:
set(CPACK_WIX_UI_BANNER ${CMAKE_SOURCE_DIR}/wixui_bmp_banner.bmp)

#This image must be 493 by 312 pixels:
set(CPACK_WIX_UI_DIALOG ${CMAKE_SOURCE_DIR}/wixui_bmp_dialog.bmp)
