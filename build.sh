#!/bin/bash

# FasalSathi Android Build Script
# Quick build and deployment script

set -e

echo "🌾 FasalSathi Android Build"
echo "==========================="
echo ""

# Check if gradlew exists
if [ ! -f "gradlew" ]; then
    echo "❌ gradlew not found! Are you in the project root?"
    exit 1
fi

# Make gradlew executable
chmod +x gradlew

# Parse command line arguments
BUILD_TYPE="debug"
INSTALL=false
CLEAN=false

while [[ $# -gt 0 ]]; do
    case $1 in
        -r|--release)
            BUILD_TYPE="release"
            shift
            ;;
        -i|--install)
            INSTALL=true
            shift
            ;;
        -c|--clean)
            CLEAN=true
            shift
            ;;
        -h|--help)
            echo "Usage: ./build.sh [options]"
            echo ""
            echo "Options:"
            echo "  -r, --release    Build release version (default: debug)"
            echo "  -i, --install    Install APK after build"
            echo "  -c, --clean      Clean build before building"
            echo "  -h, --help       Show this help message"
            echo ""
            echo "Examples:"
            echo "  ./build.sh                  # Build debug APK"
            echo "  ./build.sh -r               # Build release APK"
            echo "  ./build.sh -c -i            # Clean, build, and install debug APK"
            echo "  ./build.sh -r -i            # Build and install release APK"
            exit 0
            ;;
        *)
            echo "❌ Unknown option: $1"
            echo "Use -h or --help for usage information"
            exit 1
            ;;
    esac
done

# Clean if requested
if [ "$CLEAN" = true ]; then
    echo "🧹 Cleaning build artifacts..."
    ./gradlew clean
    echo "✅ Clean complete"
    echo ""
fi

# Build
echo "🔨 Building $BUILD_TYPE APK..."
if [ "$BUILD_TYPE" = "release" ]; then
    ./gradlew assembleRelease
    APK_PATH="app/build/outputs/apk/release/app-release.apk"
else
    ./gradlew assembleDebug
    APK_PATH="app/build/outputs/apk/debug/app-debug.apk"
fi

if [ $? -eq 0 ]; then
    echo "✅ Build successful!"
    echo ""
    
    # Show APK info
    if [ -f "$APK_PATH" ]; then
        APK_SIZE=$(du -h "$APK_PATH" | cut -f1)
        echo "📦 APK Details:"
        echo "   Path: $APK_PATH"
        echo "   Size: $APK_SIZE"
        echo ""
    fi
    
    # Install if requested
    if [ "$INSTALL" = true ]; then
        echo "📱 Installing APK..."
        
        # Check if device is connected
        if ! command -v adb &> /dev/null; then
            echo "❌ ADB not found! Please install Android SDK Platform Tools."
            exit 1
        fi
        
        DEVICES=$(adb devices | grep -v "List" | grep "device" | wc -l)
        if [ "$DEVICES" -eq 0 ]; then
            echo "❌ No Android device connected!"
            echo "   Please connect a device or start an emulator."
            exit 1
        fi
        
        adb install -r "$APK_PATH"
        
        if [ $? -eq 0 ]; then
            echo "✅ APK installed successfully!"
            echo ""
            echo "🚀 You can now launch FasalSathi on your device"
        else
            echo "❌ Installation failed!"
            exit 1
        fi
    else
        echo "💡 To install the APK, run:"
        echo "   adb install -r $APK_PATH"
        echo ""
        echo "   Or use: ./build.sh -i"
    fi
else
    echo "❌ Build failed!"
    exit 1
fi

echo ""
echo "==========================="
echo "✅ Done!"
