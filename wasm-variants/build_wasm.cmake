file(GLOB preJsFiles ${CMAKE_SOURCE_DIR}/pre*.js)
file(GLOB postJsFiles ${CMAKE_SOURCE_DIR}/post*.js)

add_subdirectory(${CMAKE_SOURCE_DIR}/src ${EXCEPTION_SUPPORT})

set (TARGET test${BUILD_SUFFIX})
if (EXCEPTION_SUPPORT STREQUAL "js")
    set(OPTS -fexceptions)
elseif (EXCEPTION_SUPPORT STREQUAL "wasm")
    set(OPTS -fwasm-exceptions)
else ()
    message( FATAL_ERROR "Exception support can either be js or wasm.")
endif ()

add_executable(${TARGET} ${CMAKE_SOURCE_DIR}/dummy.cpp)
target_compile_options(${TARGET} PUBLIC ${OPTS})
target_link_options(${TARGET} PUBLIC ${OPTS})
target_link_libraries(${TARGET} src${BUILD_SUFFIX})

em_link_pre_js(${TARGET} ${preJsFiles})
em_link_post_js(${TARGET} ${postJsFiles})
