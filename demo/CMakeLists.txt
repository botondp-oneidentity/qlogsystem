project(qlogsystem-demo
    LANGUAGES CXX
    DESCRIPTION "Demo for qlogsystem"
)

set(SOURCES
    main.cc
)

add_compile_definitions(QLOGSYSTEM_LIBRARY)

add_executable(qlogsystem-demo ${SOURCES})
target_include_directories(qlogsystem-demo PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../qlogsystem/)
target_link_libraries(qlogsystem-demo qlogsystem)
