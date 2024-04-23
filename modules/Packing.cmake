set(CPACK_PACKAGE_NAME ${PROJECT_NAME}
    CACHE STRING "The resulting package name"
)

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Efficient and easy to use logger library written in C++ (using the Qt framework)"
    CACHE STRING "Package description for the package metadata"
)

set(CPACK_PACKAGE_DESCRIPTION_FILE ${CMAKE_SOURCE_DIR}/README.md)

#TODO: Maintainer names
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_CONTACT "${CPACK_PACKAGE_VENDOR}")

set(CPACK_RESOURCE_FILE_LICENSE ${CMAKE_SOURCE_DIR}/LICENSE)
#File based license for include

#set(CPACK_RESOURCE_FILE_README "/usr/share/cmake-3.22/Templates/CPack.GenericDescription.txt")
#File based description for include

#set(CPACK_RESOURCE_FILE_WELCOME "/usr/share/cmake-3.22/Templates/CPack.GenericWelcome.txt")
#File based welcome for include

set(CPACK_PACKAGE_INSTALL_DIRECTORY ${CPACK_PACKAGE_NAME})
set(CPACK_OUTPUT_FILE_PREFIX "${CMAKE_SOURCE_DIR}/packages")
set(CPACK_INCLUDE_TOPLEVEL_DIRECTORY true)

set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "1")
set(CPACK_PACKAGE_VERSION_PATCH "2")
set(CPACK_PACKAGE_VERSION "${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}.${CPACK_PACKAGE_VERSION_PATCH}")

#???
#CPACK_SOURCE_GENERATOR

set(CPACK_SOURCE_GENERATOR TGZ)

set(CPACK_PACKAGING_INSTALL_PREFIX "/usr")

if (APPLE)
    SET (CPACK_GENERATOR "DMG")

    include(DMG)
elseif (WIN32)
    SET (CPACK_GENERATOR "WIX")

    include(WIX)
else ()
    SET (CPACK_GENERATOR "IFW") #  "DEB;RPM"

    include(DEB)
    include(RPM)
    include(IFW)
endif ()

include(CPack)

