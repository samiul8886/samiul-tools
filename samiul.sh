#!/bin/bash
clear

# প্রয়োজনীয় পাইথন প্যাকেজ চেক
if ! command -v python &> /dev/null; then
    echo -e "\e[1;33m[!] Python ইনস্টল করা হচ্ছে...\e[0m"
    pkg update -y && pkg install python git -y
fi

# গিটহাব থেকে নতুন ফাইল ডাউনলোড বা রান
if [ -d "$HOME/samiul-tools" ]; then
    cd "$HOME/samiul-tools"
    git pull 2>/dev/null
else
    cd "$HOME"
    git clone https://github.com/samiul8886/samiul-tools.git
    cd "$HOME/samiul-tools"
fi

python run.py
