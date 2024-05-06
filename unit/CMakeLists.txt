project(qlogsystem-unit
    LANGUAGES CXX
    DESCRIPTION "Unit tests for qlogsystem"
)

add_compile_definitions(QLOGSYSTEM_LIBRARY)

add_library(commonHeader INTERFACE)
target_include_directories(commonHeader INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})

find_package(Qt5 COMPONENTS Test Network REQUIRED)

add_subdirectory(iodeviceoutput)
add_subdirectory(logger)
add_subdirectory(loghelpers)
add_subdirectory(loglevels)
add_subdirectory(logspechandler)
add_subdirectory(macros)
add_subdirectory(manager)
add_subdirectory(standardlogformatter)
add_subdirectory(threadsafety)
add_subdirectory(timestampedstandardlogformatter)
