cmake_minimum_required(VERSION 3.0)

project(wasm_exceptions)

set (BUILD_SUFFIX 2)
set (EXCEPTION_SUPPORT "wasm")

include(${CMAKE_CURRENT_SOURCE_DIR}/../build_wasm.cmake)
