#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

force_color_prompt=yes
alias sua='su ads'
alias sdn='shutdown now'
alias sca='systemctl start'
alias sco='systemctl stop'
alias sce='systemctl enable'
alias scd='systemctl disable'
alias r='sudo !!'
alias sps='sudo pacman -S'
alias spss='sudo pacman -Ss'
alias spr='sudo pacman -R'
alias yaySuy='yay -Suy'
alias yays='yay -s'
alias yayS='yay -S'
alias nmclidw='nmcli device wifi'
alias nmclidwc='nmcli device wifi connect'
alias g='googler'
alias l='i3lock -i /home/ads/.wallpapers/wp2618242-blackarch-wallpaper.png'
alias bctl='bluetoothctl'

export TERMINAL='termite'
#export PATH=$PATH:/home/ads/.local/bin'
