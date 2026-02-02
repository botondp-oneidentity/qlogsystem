add_executable(tst_loghelperstest tst_loghelperstest.cc)
target_link_libraries(tst_loghelperstest 
    PRIVATE Qt6::Test
            Qt6::Network
            qlogsystem
            commonHeader
)
target_include_directories(tst_loghelperstest 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)

add_test(NAME loghelperstest COMMAND tst_loghelperstest)
