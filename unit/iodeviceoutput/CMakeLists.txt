add_executable(tst_iodeviceoutput tst_iodeviceoutputtest.cc)
target_link_libraries(tst_iodeviceoutput 
    PRIVATE Qt5::Test
            Qt5::Network
            qlogsystem
)
target_include_directories(tst_iodeviceoutput 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)

add_test(NAME iodeviceoutput COMMAND tst_iodeviceoutput)
