cmake_minimum_required(VERSION 3.0)
project(prog)

file(GLOB_RECURSE sources src/main/*.cpp src/main/*.h)

add_executable(example ${sources})

target_compile_options(example PUBLIC -std=c++1y -Wall)
