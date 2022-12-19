cmake_minimum_required(VERSION 3.17)

project(qlogsystem
    LANGUAGES CXX
    DESCRIPTION "Logging library for Qt"
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_CXX_COMPILER_LAUNCHER ccache)

find_package(Qt5 COMPONENTS Core REQUIRED)

set(CMAKE_AUTOMOC ON)

set(SOURCES
    logger.cc
    manager.cc
    qtcompatibility.cc
    standardlogformatter.cc
    timestampedstandardlogformatter.cc
    iodeviceoutput.cc
    logspechandler.cc
)

add_compile_definitions(QLOGSYSTEM_LIBRARY)

add_library(qlogsystem ${SOURCES})
target_include_directories(qlogsystem PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(qlogsystem Qt5::Core)
