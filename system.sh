echo "------------------"
echo -e "\e[1;93m[!] I am Checking what system you are running to be sure its Linux..lol [+]\e[0m"
if [ -f "/etc/debian_version" ]; then
	echo -e "\e[1;93m[!] Detected Debian based Linux [!]\e[0m"
	sleep 0.5
	echo -e "\e[1;93m[*] Collecting some information..[*]\e[0m"
	sudo apt update > /dev/null 2>&1 || echo -e "\e[1;92m[x] Could not update information.[x]\e[0m"
	echo "[*] Installing Python3 and python3-pip [*]"
	sudo apt install python3 python3-pip > /dev/null 2>&1 || echo -e "\e[1;92m[x] Could not install python3\e[0m"
	echo -e "\e[1;93m[*] We will now install dependencies....[*]\e[0m"
	sudo pip install colorama > /dev/null 2>&1 || echo -e "\e[1;92m[x] Couldnt install colorama.[x]\e[0m"
	echo -e "\e[1;93m[*] Installing the rest of the dependencies [*]\e[0m"
	pip install lolcat
	pip install termcolor
	python3 -m pip install pikepdf
	echo -e "\e[1;93m[*] Dependencies fully installed [*]\e[0m"
elif [[ "$OSTYPE" == "darwin"* ]]; then
	echo "[i] Detected darwin."
        echo "[i] We will now install brew if not existing..."
        brew --help > /dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        echo "[i] We will now install git..."
        sudo brew install git > /dev/null 2>&1  || echo "[!] Could not install git."
        echo "[i] We will now install python3 and python3-pip..."
        sudo brew install python3 > /dev/null 2>&1  || echo "[!] Could not install python3."
        echo "[i] We will now install ping..."
        sudo brew install iputils-ping > /dev/null 2>&1  || echo "[!] Could not install ping."
        echo "[i] We will now install nmap..."
        sudo brew install nmap > /dev/null 2>&1  || echo "[!] Could not install nmap."
        echo "[i] We will now install bluez..."
        sudo brew install bluez > /dev/null 2>&1  || echo "[!] Could not install bluez."
        echo "[i] We will now install aircrack-ng..."
        sudo brew install aircrack-ng > /dev/null 2>&1  || echo "[!] Could not install aircrack-ng."
        echo "[i] We will now install dsniff..."
        sudo brew install dsniff > /dev/null 2>&1  || echo "[!] Could not install dsniff."
        echo "[!] Installing rest of the dependencies [!]"
        pip install lolcat
        pip install colorama
        python3 -m pip install pikepdf
        python3 -m pip install termcolor
        echo -e "\e[1;93m[*] Dependencies fully installed [*]\e[0m"
elif [ -f "/etc/arch-release" ]; then  # FIXME
        echo "[i] Detected Arch based Linux."
        echo "[i] We will now install git..."
        sudo pacman --noconfirm -S git > /dev/null 2>&1  || echo "[!] Could not install git."
        echo "[i] We will now install python3 and python3-pip..."
        sudo pacman --noconfirm -S python3 python3-pip > /dev/null 2>&1  || echo "[!] Could not install python3."
        echo "[i] We will now install ping..."
        sudo pacman --noconfirm -S iputils-ping > /dev/null 2>&1  || echo "[!] Could not install ping."
        echo "[i] We will now install nmap..."
        sudo pacman --noconfirm -S nmap > /dev/null 2>&1  || echo "[!] Could not install nmap."
        echo "[i] We will now install bluez..."
        sudo pacman --noconfirm -S bluez > /dev/null 2>&1  || echo "[!] Could not install bluez."
        echo "[i] We will now install aircrack-ng..."
        sudo pacman --noconfirm -S aircrack-ng > /dev/null 2>&1  || echo "[!] Could not install aircrack-ng."
        echo "[i] We will now install dsniff..."
        sudo pacman --noconfirm -S dsniff > /dev/null 2>&1  || echo "[!] Could not install dsniff."
        echo "[i] We will now install psmisc..."
        sudo pacman --noconfirm -S psmisc > /dev/null 2>&1 || echo "[!] Could not install psmisc."
        echo "[+] DONE!!! [+]"
elif [[ "$OSTYPE" == "win32" ]]; then
        echo "[!] Please run on wsl."
else
        echo "[!] We could not detect your system."
        echo "[i] Please install some things manually"
        exit 0

fi

echo -e "\e[1;93m[!] All Done !! [!] \e[0m"
echo -e "\e[1;93mNow run \e[0m\e[1;92mpython3 pdfbruter.py --help\e[0m\e[1;93m to see the tool's help menu\e[0m"
        
	
	
	
	
	
