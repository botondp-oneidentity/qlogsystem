####DEB specific variables

#set(CPACK_DEBIAN_PACKAGE_NAME ${CPACK_PACKAGE_NAME}) #default value

# package name for deb. If set, then instead of some-application-0.9.2-Linux.deb
# you'll get some-application_0.9.2_amd64.deb (note the underscores too)
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)

set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Test Name")

#Use CMake project description as DEB description
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION ${CPACK_PACKAGE_DESCRIPTION_SUMMARY})

set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://github.com/balabit/qlogsystem")

#Set to ON in order to use dpkg-shlibdeps to generate better package dependency list.
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)

set(CPACK_DEBIAN_PACKAGE_PROVIDES "qlogsystem")

#lzma - Lempel–Ziv–Markov chain algorithm, xz  -XZ Utils compression, bzip2 - bzip2 Burrows–Wheeler algorithm,
#zstd - New in version 3.22. Zstandard compression, gzip - GNU Gzip compression
set(CPACK_DEBIAN_COMPRESSION_TYPE lzma)

set(CPACK_DEBIAN_PACKAGE_DEPENDS "libqt5core5a (>= 5.15.0)")
