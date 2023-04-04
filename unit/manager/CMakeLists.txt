add_executable(tst_managertest tst_managertest.cc)
target_link_libraries(tst_managertest 
    PRIVATE Qt5::Test
            Qt5::Network
            qlogsystem
)
target_include_directories(tst_managertest 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)

add_test(NAME managertest COMMAND tst_managertest)
