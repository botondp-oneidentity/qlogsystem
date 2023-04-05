cmake_minimum_required(VERSION 3.17)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_CXX_COMPILER_LAUNCHER ccache)

project(qlogsystem-project
    LANGUAGES CXX
)

find_package(Qt5 COMPONENTS Core REQUIRED)

set(CMAKE_AUTOMOC ON)

enable_testing()

add_subdirectory(qlogsystem)
add_subdirectory(unit)
add_subdirectory(demo)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/modules")

include(Packing)
