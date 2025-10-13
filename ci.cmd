@echo off
REM Create build directory if it does not exist
if not exist build mkdir build
cd build

REM Configure the project using CMake
cmake ..

REM Build the project
cmake --build .

REM Run tests using CTest with Debug configuration
ctest -C Debug --output-on-failure

cd ..

echo CI pipeline completed successfully!