# CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
project(helloworld VERSION 1.0)

set(CMAKE_C_STANDARD 99)

add_executable(helloworld src/main.c)

install(TARGETS helloworld DESTINATION bin)