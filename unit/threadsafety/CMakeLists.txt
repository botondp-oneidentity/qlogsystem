add_executable(tst_threadsafetytest tst_threadsafetytest.cc)
target_link_libraries(tst_threadsafetytest 
    PRIVATE Qt5::Test
            Qt5::Network
            qlogsystem
)
target_include_directories(tst_threadsafetytest 
    PRIVATE ${CMAKE_SOURCE_DIR}/qlogsystem)

add_test(NAME threadsafetytest COMMAND tst_threadsafetytest)
