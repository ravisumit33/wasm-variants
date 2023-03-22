cmake_minimum_required(VERSION 3.0)

project(src)

file(GLOB sourceFiles ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp)

if (EXCEPTION_SUPPORT STREQUAL "js")
    set(OPTS -fexceptions)
elseif (EXCEPTION_SUPPORT STREQUAL "wasm")
    set(OPTS -fwasm-exceptions)
else ()
    message( FATAL_ERROR "Exception support can either be js or wasm.")
endif ()

set (TARGET src${BUILD_SUFFIX})

add_library(${TARGET} ${sourceFiles})
target_compile_options(${TARGET} PUBLIC ${OPTS})
