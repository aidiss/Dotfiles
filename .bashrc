#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -r /home/archie/.byobu/prompt ] && . /home/archie/.byobu/prompt   #byobu-prompt#

export TERM=xterm

# Powerline
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

# Aliases
alias cls="clear; ls"
alias ..ls="cd ..; ls"
alias gits="git status"
alias gitc="git commit -m"
alias fz="fzf"
alias cls="clear;ls"
alias sixadsslack="firefox https://sixads.slack.com"
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'


export PATH="$PATH:$HOME/go/bin"

# History
# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


function _update_ps1() {
    PS1="$(~/go/bin/powerline-go -error $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


#todo.txt
alias td="todo.sh"

#Goland
alias goland="bash /opt/GoLand-2017.3/bin/goland.sh"
export PATH="${PATH}:/opt/GoLand-2017.3/bin"
export PATH="$PATH:/usr/bin/google-chrome"

# bash-git-prompt
if [ -f %{/usr/lib/bash-git-prompt/gitprompt.sh ]; then
   # To only show the git prompt in or under a repository directory
   # GIT_PROMPT_ONLY_IN_REPO=1
   # To use upstream's default theme
   # GIT_PROMPT_THEME=Default
   # To use upstream's default theme, modified by arch maintainer
   GIT_PROMPT_THEME=Default_Arch
   source /usr/lib/bash-git-prompt/gitprompt.sh
fi
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
