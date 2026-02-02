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

add_library(qlogsystem SHARED ${SOURCES})
target_include_directories(qlogsystem PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(qlogsystem PUBLIC Qt::Core)
target_compile_definitions(qlogsystem PRIVATE QLOGSYSTEM_LIBRARY)
install(TARGETS qlogsystem DESTINATION lib)
