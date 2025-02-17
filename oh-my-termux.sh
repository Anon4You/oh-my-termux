#!/usr/bin/env bash

# oh-my-termux
# Version    : 1.0
# Description: Make your termux interactive with auto-suggestion, syntax-highlighting and your own banner!
# Author     : Alienkrishn [Anon4You]
# Github     : https://github.com/Anon4You
# Email      : Alienkrishn@gmail.co.
# If you copy, consider giving credit! We keep our code open source to help others
#



# color variables

red="\e[31m" green="\e[32m" yellow="\e[33m"
blue="\e[34m" pink="\e[35m" cyan="\e[36m"
white="\e[37m" black="\e[30m" reset="\e[0m\n"
filred="\e[41;1m"



# OhMyTermux banner 

banner(){
printf "${yellow}
   ___  _    __  __     _____
  / _ \\| |_ |  \\/  |_  |_   _|__ _ _ _ __ _  ___ __
 | (_) | ' \\| |\\/| | || || |/ -_) '_| '  \\ || \\ \\ /
  \\___/|_||_|_|  |_|\\_, ||_|\\___|_| |_|_|_\\_,_/_\\_\\
                    |__/   ${blue}${0} v-1.0
                           ${white}By Alienkrishn
     
     ${green}Make your terminal interactive with 
     auto-suggestion, syntax-highlighting 
     and your own banner!${reset}
"
}



# depencies required packages 

depends(){
  printf "${cyan}[*] Updating termux repositoris..${reset}"
  apt update -y &> /dev/null

  printf "${cyan}[*] Installing required packages...${reset}"
  for i in fish starship git eza; do 
    if hash ${i} > /dev/null 2>&1; then
      printf "${green}[*] $i is OK...${reset}"
    else
      printf "${red}[!] ${i} not found...\n${yellow}[+] Installing ${i}...${reset}"
      apt install ${i} -y || {
        printf "${red}[!] Something wenn wrong!, Aborting...${reset}"
        sleep 2
        exit 1
      }
    fi
  done
  printf "${pink}== Downloading required files...${reset}"
  git clone --quiet https://github.com/Anon4You/oh-my-termux.git
  
}


# main function 

main(){
  clear
  banner
  read -p "Install oh-my-termux [Y/n] " chs 
  if [[ $chs == n ]]; then
    exit 0 
  else
    depends
  fi


  # Changing shell to fish 
 
  if ! echo ${SHELL} | grep -q "fish"; then 
    printf "${blue} Changing shell to fish..${reset}"
    chsh -s fish
  fi

  # setup config files
  if [[ ! -d ~/.config/fish/ ]]; then
    mkdir -p ~/.config/fish 
  fi
  mv oh-my-termux/assets/config.fish ~/.config/fish/
  mv oh-my-termux/assets/starship.toml ~/.config/ 
  mv oh-my-termux/assets/colors.properties ~/.termux/ 
  mv oh-my-termux/assets/font.ttf ~/.termux/

  # cleaning junk 
  apt clean 
  rm -rf oh-my-termux
  rm -rf oh-my-termux.sh
  rm -rf $PREFIX/etc/motd &> /dev/null

  printf "${white}${0} setup complete...restart your termux to see efects..."
}

main
