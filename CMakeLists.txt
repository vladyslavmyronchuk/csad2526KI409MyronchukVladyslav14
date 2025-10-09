cmake_minimum_required(VERSION 3.10)
project(MathOperationsTest)

set(CMAKE_CXX_STANDARD 17)

# Add main library
add_library(math_operations math_operations.cpp)

# Google Test
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/heads/main.zip
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

enable_testing()

# Tests
add_executable(unit_tests tests/unit_tests.cpp)
target_link_libraries(unit_tests gtest_main math_operations)

include(GoogleTest)
gtest_discover_tests(unit_tests)
