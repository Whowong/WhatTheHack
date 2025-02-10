#!/bin/bash

# Define the expected repository name
EXPECTED_REPO="WhatTheHac"

# Get the current repository name
CURRENT_REPO=$(basename $(git rev-parse --show-toplevel))

# Check if the current repository is the expected one
if [ "$CURRENT_REPO" != "$EXPECTED_REPO" ]; then
    echo "**************************************************"
    echo "* WARNING: You are in the wrong repository!      *"
    echo "* Expected: $EXPECTED_REPO                      *"
    echo "* Current: $CURRENT_REPO                        *"
    echo "**************************************************"
fi 
