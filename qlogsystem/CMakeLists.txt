project(qlogsystem
    LANGUAGES CXX
    DESCRIPTION "Logging library for Qt"
)

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
target_link_libraries(qlogsystem PUBLIC Qt5::Core)
#install(TARGETS qlogsystem DESTINATION lib)
