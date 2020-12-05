#!/bin/bash

#   File:   ./.bash_profile
#   Author: Cory W. Hodge
#   Date:   12/5/2020   

# PATH EXPORTS
export PATH="$PATH:"/Applications/microchip/xc8/v2.30/bin""

export PATH="$PATH:"/Applications/microchip/xc32/v2.50/bin""

### THIS MACHINE ###

# Navigate to the 

### NAVIGATION ###
function go {
    cd "$1"     # Open Directory
    clear       # Clear Screen
    ls -la      # List All Items in Long Format
}

function up {
    cd ..
    clear
}

function cl {
    clear
    ls -la
}
### ALIAS' ###

### FUNCTIONS ###