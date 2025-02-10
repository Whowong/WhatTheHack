#!/bin/bash

# Define the expected repository name
EXPECTED_REPO="Whowong/WhatTheHack"

# Get the current repository name
CURRENT_REPO=$(git remote get-url origin | sed 's|https://github.com/||')

# Check if the current repository is the expected one
if [ "$CURRENT_REPO" != "$EXPECTED_REPO" ]; then
    echo "**************************************************"
    echo "* WARNING: You are in the wrong repository!      *"
    echo "* Expected: $EXPECTED_REPO                      *"
    echo "* Current: $CURRENT_REPO                        *"
    echo "**************************************************"
fi 
