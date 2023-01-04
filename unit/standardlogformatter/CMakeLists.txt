add_executable(tst_standardlogformattertest tst_standardlogformattertest.cc)
target_link_libraries(tst_standardlogformattertest 
    PRIVATE Qt5::Test
            Qt5::Network
            qlogsystem
)
target_include_directories(tst_standardlogformattertest 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)
