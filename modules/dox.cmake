add_custom_target(
    docs ALL
    COMMAND cd ${CMAKE_SOURCE_DIR} && doxygen ${CMAKE_SOURCE_DIR}/.doxygen >/dev/null
)
