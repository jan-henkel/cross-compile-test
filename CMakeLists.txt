cmake_minimum_required(VERSION 3.10)

set(CMAKE_TOOLCHAIN_FILE toolchain_clang.cmake)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
project(CrossCompileTest VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
#set(CMAKE_CXX_FLAGS -v)

add_executable(CrossCompileExecutable main.cpp src_test_folder/src_test.cpp)
target_include_directories(CrossCompileExecutable PUBLIC include_test_folder)
