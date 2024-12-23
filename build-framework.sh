#!/bin/bash

# Variables
FRAMEWORK_NAME="NHValidationKit"
BUILD_DIR="./build"
XCFRAMEWORK_DIR="./XCFramework"

# Clean previous builds
rm -rf "${BUILD_DIR}"
rm -rf "${XCFRAMEWORK_DIR}"

# Build for Device (iphoneos)
xcodebuild archive \
    -scheme "${FRAMEWORK_NAME}" \
    -configuration Release \
    -destination "generic/platform=iOS" \
    -archivePath "${BUILD_DIR}/iOS" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# Build for Simulator (iphonesimulator)
xcodebuild archive \
    -scheme "${FRAMEWORK_NAME}" \
    -configuration Release \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "${BUILD_DIR}/iOS-Simulator" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# Create XCFramework
xcodebuild -create-xcframework \
    -framework "${BUILD_DIR}/iOS.xcarchive/Products/Library/Frameworks/${FRAMEWORK_NAME}.framework" \
    -framework "${BUILD_DIR}/iOS-Simulator.xcarchive/Products/Library/Frameworks/${FRAMEWORK_NAME}.framework" \
    -output "${XCFRAMEWORK_DIR}/${FRAMEWORK_NAME}.xcframework"

echo "XCFramework is available at: ${XCFRAMEWORK_DIR}/${FRAMEWORK_NAME}.xcframework"
