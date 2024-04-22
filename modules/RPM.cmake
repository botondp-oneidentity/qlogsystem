# package name for rpm. If RPM-DEFAULT, rpmbuild will generate the packagename
set(CPACK_RPM_FILE_NAME RPM-DEFAULT)

set(CPACK_RPM_PACKAGE_LICENSE "LGPLv2.1")

#Deprecated in fedora/RHEL
set(CPACK_RPM_PACKAGE_GROUP Unspecified)

#lzma - Lempel–Ziv–Markov chain algorithm, xz  -XZ Utils compression,
#bzip2 - bzip2 Burrows–Wheeler algorithm, gzip - GNU Gzip compression
set(CPACK_RPM_COMPRESSION_TYPE lzma)

set(CPACK_RPM_PACKAGE_REQUIRES "qt5-qtbase >= 5.15.0")

