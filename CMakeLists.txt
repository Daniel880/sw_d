cmake_minimum_required(VERSION 3.10)

project(sw_d)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_library(MAGIC_LIB magic REQUIRED)

add_executable(sw_d main.cpp)
target_link_libraries(sw_d PRIVATE ${MAGIC_LIB})