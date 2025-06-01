# ✅ Clear screen and print ASCII banner
clear
echo "   _______       _      ____                                "
echo "  / ____(_)___  (_)  __/ __ \___  ____ ___  ____  ____      "
echo " / / __/ / __ \/ / |/_/ / / / _ \/ __ \`__ \/ __ \/ __ \     "
echo "/ /_/ / / / / / />  </ /_/ /  __/ / / / / / /_/ / / / /     "
echo "\____/_/_/ /_/_/_/|_/_____/\___/_/ /_/ /_/\____/_/ /_/      "
echo "                                                           "
echo "      🐍 GinixDemon | Ethical Hacking Toolkit 🧠"
echo ""
sleep 3

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
