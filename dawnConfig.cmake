add_library(webgpu SHARED IMPORTED)
target_include_directories(
        webgpu
        INTERFACE
        ${CMAKE_CURRENT_LIST_DIR}/../../../include
)
set_property(
        TARGET
        webgpu
        PROPERTY
        IMPORTED_LOCATION
        ${CMAKE_CURRENT_LIST_DIR}/../../../lib/libwebgpu_dawn.so
)