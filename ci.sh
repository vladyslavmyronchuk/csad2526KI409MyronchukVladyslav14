#!/bin/bash
set -e

# Create build directory if it does not exist
mkdir -p build
cd build

# Configure the project using CMake
cmake ..

# Build the project
cmake --build .

# Run tests using CTest
ctest --output-on-failure

cd ..

# Make build.sh executable if it exists
if [ -f build.sh ]; then
    chmod +x build.sh
fi

echo "CI pipeline completed successfully!"