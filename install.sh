# ✅ Step 1: Install dependencies
echo "📦 Installing required packages..."
pkg update -y
pkg install -y git python p7zip unzip

# ✅ Step 2: Extract 7z archive (with password)
echo "📦 Extracting GinixDemon.7z..."
7z x GinixDemon.7z -pGinixDemon80769210 -aoa

# ✅ Step 3: Optional unzip (if you also include a .zip)
if [ -f "GinixDemon.zip" ]; then
    echo "📦 Unzipping GinixDemon.zip..."
    unzip -o GinixDemon.zip
fi

# ✅ Step 4: Launch main.py
if [ -f "main.py" ]; then
    echo "🚀 Launching GinixDemon..."
    chmod +x main.py
    python3 main.py || echo "❌ Failed to execute main.py"
else
    echo "❌ Error: main.py not found!"
    exit 1
fi
