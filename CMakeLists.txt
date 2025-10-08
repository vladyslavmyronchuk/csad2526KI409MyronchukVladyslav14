cmake_minimum_required(VERSION 3.10)

project(csad2526KI409MyronchukVladyslav14 VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Додає всі .cpp файли з поточної директорії
file(GLOB SOURCES "*.cpp")

add_executable(${PROJECT_NAME} ${SOURCES})
