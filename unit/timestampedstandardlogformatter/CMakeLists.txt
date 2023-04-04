add_executable(tst_timestampedstandardlogformattertest tst_timestampedstandardlogformattertest.cc)
target_link_libraries(tst_timestampedstandardlogformattertest 
    PRIVATE Qt5::Test
            Qt5::Network
            qlogsystem
)
target_include_directories(tst_timestampedstandardlogformattertest 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)

add_test(NAME timestampedstandardlogformattertest COMMAND tst_timestampedstandardlogformattertest)
