add_executable(tst_loglevelstest tst_loglevelstest.cc)
target_link_libraries(tst_loglevelstest 
    PRIVATE Qt5::Test
            Qt5::Network
            qlogsystem
)
target_include_directories(tst_loglevelstest 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)
