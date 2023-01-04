add_executable(tst_logspechandlertest tst_logspechandlertest.cc)
target_link_libraries(tst_logspechandlertest 
    PRIVATE Qt5::Test
            Qt5::Network
            qlogsystem
)
target_include_directories(tst_logspechandlertest 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)
