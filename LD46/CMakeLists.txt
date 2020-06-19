cmake_minimum_required(VERSION 3.15)
project(LD46)

set(CMAKE_CXX_STANDARD 11)

find_package(SDL2 REQUIRED)
include_directories(${SDL2_INCLUDE_DIRS})

add_executable(LD46 Main.cpp Game.cpp Game.h Constants.h)
target_link_libraries(LD46 ${SDL2_LIBRARIES})