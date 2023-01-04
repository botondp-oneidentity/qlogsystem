add_executable(tst_loggertest tst_loggertest.cc)
target_link_libraries(tst_loggertest 
    PRIVATE Qt5::Test
            Qt5::Network
            qlogsystem
            commonHeader
)
target_include_directories(tst_loggertest 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)
