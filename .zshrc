# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt appendhistory autocd extendedglob nomatch notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ads/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#  ZSH_THEME=robbyrussell

plugins=(
  git,
  autojump,
  zsh-autosuggestions,
  zsh-syntax-highlighting,
  ansiweather,
  enhancd
)

autoload -U promptinit; promptinit
prompt spaceship
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
