#!/bin/bash

# স্ক্রিন ক্লিয়ার করবে
clear

# কালার কোড
ORANGE='\033[38;5;208m'
PURPLE='\033[38;5;141m'
MAGENTA='\033[38;5;198m'
CYAN='\033[1;36m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
WHITE='\033[1;37m'
RED='\033[1;31m'
NC='\033[0m'

# HBX স্টাইলের ব্যানার বক্স
echo -e "${PURPLE}╔══════════════════════════════════════════════════════╗${NC}"
echo -e "${PURPLE}║                                                      ║${NC}"
echo -e "${ORANGE}║   ███████╗ █████╗ ███╗   ███╗██╗██╗   ██╗██╗         ║${NC}"
echo -e "${ORANGE}║   ██╔════╝██╔══██╗████╗ ████║██║██║   ██║██║         ║${NC}"
echo -e "${ORANGE}║   ███████╗███████║██╔████╔██║██║██║   ██║██║         ║${NC}"
echo -e "${ORANGE}║   ╚════██║██╔══██║██║╚██╔╝██║██║██║   ██║██║         ║${NC}"
echo -e "${ORANGE}║   ███████║██║  ██║██║ ╚═╝ ██║██║╚██████╔╝███████╗    ║${NC}"
echo -e "${ORANGE}║   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝ ╚═════╝ ╚══════╝    ║${NC}"
echo -e "${MAGENTA}║                    T  O  O  L  S                     ║${NC}"
echo -e "${PURPLE}╠══════════════════════════════════════════════════════╣${NC}"
echo -e "${PURPLE}║ ${CYAN}Premium Termux Script Master · Fast & Secure Hub${PURPLE}     ║${NC}"
echo -e "${PURPLE}║   ${YELLOW}⚡ FAST SPEED  ${PURPLE}·  ${CYAN}📡 DIRECT GITHUB  ${PURPLE}·  ${GREEN}🔐 ACTIVE${PURPLE}        ║${NC}"
echo -e "${PURPLE}╚══════════════════════════════════════════════════════╝${NC}"
echo ""

# HBX এর মতো সবুজ স্ট্যাটাস বক্স
echo -e "${GREEN}┌──────────────────────────────────────────────────────┐${NC}"
echo -e "${GREEN}│  ${WHITE}✔  MAIN DASHBOARD — SELECT AN OPTION                ${GREEN}│${NC}"
echo -e "${GREEN}└──────────────────────────────────────────────────────┘${NC}"
echo ""

# স্ট্যাটাস ও মেনু
echo -e "${WHITE}Current Status: ${YELLOW}ONLINE (v1.0)${NC}"
echo ""
echo -e "${YELLOW}[1]  ${WHITE}▶  Update & Upgrade Termux${NC}"
echo -e "${YELLOW}[2]  ${WHITE}▶  Show My Device & IP Info${NC}"
echo -e "${YELLOW}[3]  ${WHITE}▶  Check System Storage${NC}"
echo -e "${RED}[4]  ${WHITE}▶  Exit Tool${NC}"
echo ""

# ইনপুট প্রম্পট
echo -ne "${YELLOW}❯ Choose [1-4] : ${NC}"
read choice

case $choice in
    1)
        echo -e "\n${GREEN}[+] Termux আপডেট হচ্ছে...${NC}"
        pkg update && pkg upgrade -y
        ;;
    2)
        echo -e "\n${CYAN}[+] ডিভাইস ইনফরমেশন:${NC}"
        uname -a
        curl -s ifconfig.me
        echo ""
        ;;
    3)
        echo -e "\n${CYAN}[+] স্টোরেজ ইনফরমেশন:${NC}"
        df -h
        ;;
    4)
        echo -e "\n${RED}✦ Bye! Thanks for using Samiul Tools.${NC}"
        exit 0
        ;;
    *)
        echo -e "\n${RED}[!] ভুল অপশন সিলেক্ট করেছেন!${NC}"
        ;;
esac
