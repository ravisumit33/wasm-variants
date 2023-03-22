cmake_minimum_required(VERSION 3.0)

project(test_cmake)

# Add global definitions

option (BUILD_JS_EXCEPTIONS "Build with exceptions supported through js" ON)
option (BUILD_WASM_EXCEPTIONS "Build with exceptions supported through wasm" ON)

add_subdirectory(${CMAKE_SOURCE_DIR}/wasm-variants)
