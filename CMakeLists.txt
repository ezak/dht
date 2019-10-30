cmake_minimum_required(VERSION 2.8)
project(dht)

set (CMAKE_C_FLAGS "-g -Wall")

include_directories(.)

add_library(${PROJECT_NAME} STATIC
    dht.c
)

target_link_libraries(dht crypt)

install(TARGETS ${PROJECT_NAME} DESTINATION lib)
install(FILES dht.h DESTINATION include/dht)