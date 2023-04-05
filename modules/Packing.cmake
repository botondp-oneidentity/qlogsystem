set(CPACK_PACKAGE_NAME ${PROJECT_NAME}
    CACHE STRING "The resulting package name"
)

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Efficient and easy to use logger library written in C++ (using the Qt framework)"
    CACHE STRING "Package description for the package metadata"
)

set(CPACK_PACKAGE_DESCRIPTION_FILE ${CMAKE_SOURCE_DIR}/README.md)

#set(CPACK_PACKAGE_VENDOR "")
#set(CPACK_PACKAGE_CONTACT "")

set(CPACK_PACKAGE_INSTALL_DIRECTORY ${CPACK_PACKAGE_NAME})
SET(CPACK_OUTPUT_FILE_PREFIX "${CMAKE_SOURCE_DIR}/packages")

set(CPACK_INCLUDE_TOPLEVEL_DIRECTORY true)

set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "1")
set(CPACK_PACKAGE_VERSION_PATCH "2")
set(CPACK_PACKAGE_VERSION "${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}.${CPACK_PACKAGE_VERSION_PATCH}")

#???
#CPACK_SOURCE_GENERATOR

SET (CPACK_GENERATOR "DEB")
SET (CPACK_SOURCE_GENERATOR TGZ)

set(CPACK_PACKAGING_INSTALL_PREFIX "/usr")

#DEB specific variables

#set(CPACK_DEBIAN_PACKAGE_NAME ${CPACK_PACKAGE_NAME})#default value

# package name for deb. If set, then instead of some-application-0.9.2-Linux.deb
# you'll get some-application_0.9.2_amd64.deb (note the underscores too)
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)

set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Test Name")

#lzma - Lempel–Ziv–Markov chain algorithm, xz  -XZ Utils compression, bzip2 - bzip2 Burrows–Wheeler algorithm,
#zstd - New in version 3.22. Zstandard compression, gzip - GNU Gzip compression
set(CPACK_DEBIAN_COMPRESSION_TYPE lzma)

set(CPACK_DEBIAN_PACKAGE_DEPENDS "libqt5core5a (>= 5.15.0)")

include(CPack)
