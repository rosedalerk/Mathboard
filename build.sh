#!/bin/sh

# Set the project/workspace name and scheme
PROJECT_NAME="Mathboard"
SCHEME_NAME="Mathboard"

# Clean the build directory
xcodebuild clean -project "${PROJECT_NAME}.xcodeproj" -scheme "${SCHEME_NAME}" -configuration Release

# Build the project
xcodebuild build -project "${PROJECT_NAME}.xcodeproj" -scheme "${SCHEME_NAME}" -configuration Release -derivedDataPath ./build
