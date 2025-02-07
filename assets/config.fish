if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_username OhMyTermux

function fish_greeting
  printf "\e[36mWelcom back to termux >>\e[31;1m $fish_username\e[0;1m

   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠟⠛⠛⠛⠛⠛⢦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀   ⠀⠀⠀⠀⠀⣠⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠙⠷⣄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀   ⠀⢀⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡆⠀⠀⠀⠀⠀⠀⠀
   ⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⠀⠀
⠀⠀   ⠀⠀⠀⠀⢀⡿⠀⠀⢀⣀⣤⡴⠶⠶⢦⣤⣀⡀⠀⠀⢻⡆⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀   ⠀⠀⠘⣧⡀⠛⢻⡏⠀⠀⠀⠀⠀⠀⠉⣿⠛⠂⣼⠇⠀⠀⠀⠀⠀⠀
⠀   ⠀⠀⠀⢀⣤⡴⠾⢷⡄⢸⡇⠀⠀⠀⠀⠀⠀⢀⡟⢀⡾⠷⢦⣤⡀⠀⠀⠀⠀
   ⠀⠀⠀⢀⡾⢁⣀⣀⣀⣻⣆⣻⣦⣤⣀⣀⣠⣴⣟⣡⣟⣁⣀⣀⣀⢻⡄⠀⠀⠀
⠀⠀   ⢀⡾⠁⣿⠉⠉⠀⠀⠉⠁⠉⠉⠉⠉⠉⠀⠀⠈⠁⠈⠉⠉⣿⠈⢿⡄⠀⠀
⠀⠀   ⣾⠃⠀⣿⠀⠀⠀⠀⠀⠀⣠⠶⠛⠛⠷⣤⠀⠀⠀⠀⠀⠀⣿⠀⠈⢷⡀⠀
    ⣼⠃⠀⠀⣿⠀⠀⠀⠀⠀⢸⠏⢤⡀⢀⣤⠘⣧⠀⠀⠀⠀⠀⣿⠀⠀⠈⣷⠀
   ⢸⡇⠀⠀⠀⣿⠀⠀⠀⠀⠀⠘⢧⣄⠁⠈⣁⣴⠏⠀⠀⠀⠀⠀⣿⠀⠀⠀⠘⣧
   ⠈⠳⣦⣀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠻⠶⠶⠟⠀⠀⠀⠀⠀⠀⠀⣿⠀⢀⣤⠞⠃
⠀⠀    ⠙⠷⣿⣀⣀⣀⣀⣀⣠⣤⣤⣤⣤⣀⣤⣠⣤⡀⠀⣤⣄⣿⡶⠋⠁⠀⠀
⠀⠀⠀⠀    ⢿⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣿ \e[34;1m$fish_username
\e[33m---------------------------------------------
   \e[32;1m
   We are Anonymous. We are Legion. 
   We do not forgive. We do not-
   forget. Expect us 
   \e[0m               \t- Anonymous
"⠀⠀
end
# navigation
alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'


# Changing "ls" to "eza"
alias la='eza -al --color=always --group-directories-first' # my preferred listing
alias ls='eza -a --color=always --group-directories-first'  # all files and dirs
alias ll='eza -l --color=always --group-directories-first'  # long format
alias lh='eza -alh --color=always --group-directories-first' # tree listing
#alias l.='eza -a | grep -E "^\."

starship init fish | source
