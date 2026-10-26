#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import time

ORANGE = "\033[38;5;208m"
PURPLE = "\033[38;5;141m"
MAGENTA = "\033[38;5;198m"
CYAN = "\033[1;36m"
GREEN = "\033[1;32m"
YELLOW = "\033[1;33m"
WHITE = "\033[1;37m"
RED = "\033[1;31m"
NC = "\033[0m"

def show_banner():
    os.system("clear")
    print(f"{PURPLE}╔══════════════════════════════════════════════════════╗{NC}")
    print(f"{PURPLE}║                                                      ║{NC}")
    print(f"{ORANGE}║   ███████╗ █████╗ ███╗   ███╗██╗██╗   ██╗██╗         ║{NC}")
    print(f"{ORANGE}║   ██╔════╝██╔══██╗████╗ ████║██║██║   ██║██║         ║{NC}")
    print(f"{ORANGE}║   ███████╗███████║██╔████╔██║██║██║   ██║██║         ║{NC}")
    print(f"{ORANGE}║   ╚════██║██╔══██║██║╚██╔╝██║██║██║   ██║██║         ║{NC}")
    print(f"{ORANGE}║   ███████║██║  ██║██║ ╚═╝ ██║██║╚██████╔╝███████╗    ║{NC}")
    print(f"{ORANGE}║   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝ ╚═════╝ ╚══════╝    ║{NC}")
    print(f"{MAGENTA}║                    T  O  O  L  S                     ║{NC}")
    print(f"{PURPLE}╠══════════════════════════════════════════════════════╣{NC}")
    print(f"{PURPLE}║ {CYAN}Premium Termux Script Master · Fast & Secure Hub{PURPLE}     ║{NC}")
    print(f"{PURPLE}║   {YELLOW}⚡ FAST RUN  {PURPLE}·  {CYAN}📡 SO-ENGINE  {PURPLE}·  {GREEN}🔐 ACTIVE SECURE{PURPLE}      ║{NC}")
    print(f"{PURPLE}╚══════════════════════════════════════════════════════╝{NC}\n")

    print(f"{GREEN}┌──────────────────────────────────────────────────────┐{NC}")
    print(f"{GREEN}│  {WHITE}✔  INITIALIZING BOT CORE — LOADING ENGINE...        {GREEN}│{NC}")
    print(f"{GREEN}└──────────────────────────────────────────────────────┘{NC}\n")

def main():
    show_banner()
    cur_dir = os.path.dirname(os.path.abspath(__file__))
    if cur_dir not in sys.path:
        sys.path.insert(0, cur_dir)

    try:
        import bot
        if hasattr(bot, "main"):
            bot.main()
        elif hasattr(bot, "menu"):
            bot.menu()
    except ImportError as e:
        print(f"{RED}[✖] ERROR: bot মডিউল পাওয়া যায়নি! ({e}){NC}")
        sys.exit(1)

if __name__ == "__main__":
    main()
