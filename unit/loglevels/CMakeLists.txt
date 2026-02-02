add_executable(tst_loglevelstest tst_loglevelstest.cc)
target_link_libraries(tst_loglevelstest 
    PRIVATE Qt::Test
            Qt::Network
            qlogsystem
)
target_include_directories(tst_loglevelstest 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)

add_test(NAME loglevelstest COMMAND tst_loglevelstest)
