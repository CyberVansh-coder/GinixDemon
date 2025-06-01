#!/bin/bash

clear
echo "🔧 GinixDemon Auto Installer"
echo "Cloning the repository from GitHub..."

# Clone the GitHub repo
git clone https://github.com/CyberVansh-coder/GinixDemon.git || { echo "Git clone failed!"; exit 1; }

# Enter the directory
cd GinixDemon || { echo "GinixDemon directory not found!"; exit 1; }

# Extract GinixDemon.7z if it exists
if [ -f "GinixDemon.7z" ]; then
    echo "📦 Extracting GinixDemon.7z..."
    7z x GinixDemon.7z || { echo "Failed to extract 7z archive"; exit 1; }
fi

# Unzip GinixDemon.zip if it exists
if [ -f "GinixDemon.zip" ]; then
    echo "📦 Unzipping GinixDemon.zip..."
    unzip -o GinixDemon.zip || { echo "Failed to unzip archive"; exit 1; }
fi

# Run main launcher
if [ -f "mai.py" ]; then
    echo "🚀 Launching GinixDemon..."
    chmod +x mai.py
    python3 mai.py
else
    echo "❌ Error: mai.py not found!"
    exit 1
fi