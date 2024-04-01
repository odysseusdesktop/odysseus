#!/bin/bash

# Get the path of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Loop through all directories in the current directory
for dir in "$SCRIPT_DIR"/*; do
    # If it is a directory
    if [ -d "$dir" ]; then
        # Enter the directory
        cd "$dir"
        
        # Create a directory called build
        mkdir -p build
        
        # Enter the build directory
        cd build
        
        # Run 'cmake ..; make; sudo make install'
        cmake ..
        make
        sudo make install
    fi
done
