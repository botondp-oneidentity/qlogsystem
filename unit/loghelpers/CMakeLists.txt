add_executable(tst_loghelperstest tst_loghelperstest.cc)
target_link_libraries(tst_loghelperstest 
    PRIVATE Qt5::Test
            Qt5::Network
            qlogsystem
            commonHeader
)
target_include_directories(tst_loghelperstest 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)
