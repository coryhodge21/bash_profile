#!/bin/bash

#   File:   .bash_profile.sh
#   Author: Cory W. Hodge
#   Date:   12/5/2020   
#   Description : Handy cmd line functions


### Formatting ###

# Highlight GREP 
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;31;40'


### Alias's ###


### NAVIGATION ###

# Enter Directory and Show Contents
function go {
    cd "$1"     # Open Directory
    clear       # Clear Screen
    ls -la      # List All Items in Long Format
}

# Go up one directory
function up {
    cd ..
    clear
}

# Go up two directories
function upp {
    cd ../..
    clear
}

# Go up three directories
function uppp {
    cd ../../..
    clear
}

# Go up four directories
function upppp {
    cd ../../../..
    clear
}

# Go up five directories
function uppppp {
    cd ../../../../..
    clear
}

# Clear Screen
function cs {
    clear
}

# Clear Screen and List Directory Contents
function csl {
    clear
    ls -la
}

### FUNCTIONS ###

# Git Status of Repository
function gits {
    clear   
    git status
}

# Stage all local changes
function gita {
    git add .
    git add ../.
    git status
}
# Commit all staged changes
function gitc {
    git commit -m "$1"
    git push
    git status
}

# Add, commit, and push
function gitt {
    git add .
    git commit -m "$1"
    git push
    clear
    git status
}

# List Branches
function gitb {
    clear
    git fetch
    git branch -a
}


### Machine Specific ###
export WINDOWS_HOME_DIRECTORY='/mnt/c/Users/coryh'

# Navigate to Windows Directory Space
function goWinHome {
    clear
    cd WINDOWS_HOME_DIRECTORY
    ls -la
}

# Navigate to Linux Working Directory
function goHome {
    cd ~
    clear
    ls -la
}

# Navigate to Linux Home Directory
function goRepos {
    cd ~/Repos
    clear
    ls -la
}

# Navigate to ESP32 Project Folder
function goESP {
    cd ~/Repos/ESP32-General_Controller
    gits
}
