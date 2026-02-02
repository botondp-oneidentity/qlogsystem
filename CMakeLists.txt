cmake_minimum_required(VERSION 3.22)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_CXX_COMPILER_LAUNCHER ccache)

project(qlogsystem-project
    LANGUAGES CXX
)

if(NOT DEFINED QT_VERSION)
    set(QT_VERSION 6)
endif()

find_package(Qt${QT_VERSION} COMPONENTS Core REQUIRED)
message("-- Qt version found: Qt${QT_VERSION}")

set(CMAKE_AUTOMOC ON)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/install/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/install/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/install/bin)

enable_testing()

add_subdirectory(qlogsystem)
add_subdirectory(unit)
add_subdirectory(demo)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/modules")

include(dox)
include(Packing)




