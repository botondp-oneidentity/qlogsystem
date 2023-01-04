add_executable(tst_macrostest tst_macrostest.cc)
target_link_libraries(tst_macrostest 
    PRIVATE Qt5::Test
            Qt5::Network
            qlogsystem
            commonHeader
)
target_include_directories(tst_macrostest 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)
