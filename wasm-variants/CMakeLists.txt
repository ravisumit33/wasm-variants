cmake_minimum_required(VERSION 3.0)

project(wasm_variants)

if(BUILD_JS_EXCEPTIONS)
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/js-exceptions)
endif()

if(BUILD_WASM_EXCEPTIONS)
    add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/wasm-exceptions)
endif()

