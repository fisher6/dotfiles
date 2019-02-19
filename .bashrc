# .bashrc # Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
PATH="${PATH[*]}:.:" # PATH=$PATH:. also works
#cd ~/test # home folder

#shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=50000
export HISTFILESIZE=$HISTSIZE
export HISTTIMEFORMAT="%y/%m/%d %T  "

# Prompts
#PS1=[\u@\h \W]\$ # Default: [galfisher@t2 mtm]$
#PS1='${debian_chroot:+($debian_chroot)}[\t]\w\$ ' # No colors: ~/mtm
export PS1="${debian_chroot:+($debian_chroot)}\[\e[0;33m\][\t]\w ($(git branch 2>/dev/null | grep '^*' | colrm 1 2))\$\[\e[m\] " # One color: ~/mtm
#PS1="\[\e[0;36m\][\e[m\]\[\e[0;32m\]\t\[\e[0;36m\]]\e[m\]\[\e[0;36m\]\[\e[1;33m\]\w\[\e[m\]\[\e[1;30m\] \$\[\e[m\] " # Colors [17:20:16]~/mtm/ex1 $

### Docker
alias dc='docker-compose -f $APP/docker-compose-dev.yaml -f $APP/docker-compose-mongo.yml'
alias dcps='dc ps | egrep "erp|p_api|mongo|erp_frontend"'
alias erp='dc start erp; dc unpause erp'
alias api='dc start api; dc unpause api'

# Aliases
alias ls='ls -aF'
alias ll='ls -la'
alias l='ls -lartF'
alias h='history'
alias home='cd ~'
alias test='cd ~/private/test'
alias short='cd ~/Downloads/shorts'
alias ms='~/Downloads/shorts/make_short'
alias aliases='cat ~/.bashrc | grep alias'
alias bashrc='vim ~/.bashrc; source ~/.bashrc' # source to apply changes
alias hist='history 5'
alias swp='rm .*swp*'
alias grepp='grep -inIr' # searches in file contents
# Git (also git X in .gitconfig)
alias gc='git commit'
alias ga='git add'
alias gs='git status'
alias gco='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
alias gpush='git push'
alias gpull='git pull'
# tmux
alias tmux='tmux at'
# Django
alias activate='source ~/ve/bin/activate' # searches in file contents
activate
# X
export PYTHONPATH=$HOME/src/xometry_geometry:$HOME/src/xometry_app/python-path
export PATH=${PATH}:/usr/local/mongodb/bin
alias killmongo='ps -ef | grep mongod | tr -s " " " " | cut -d" " -f 3,4 | while read line; do if [[ `echo $line | cut -d " " -f2` -eq 1 ]]; then sudo kill -9 `echo $line | cut -d" " -f1`; fi; done'
alias src='cd ~/src'
alias webappd='cd ~/src/xometry_webapp'
alias appd='cd ~/src/xometry_app'
alias erpd='cd ~/src/xometry_app/xometry_erp'
alias pricingd='cd ~/src/xometry_app/pricing'
alias apid='cd ~/src/xometry_app/xometry_api'
alias frontend='cd ~/src/xometry_app/xometry_erp_frontend'
alias geod='cd ~/src/xometry_app/xometry_geod'
alias engined='cd ~/src/xometry_app/xometry_engine'
alias webapp='python ~/src/xometry_app/xometry_webapp/main.py'
alias erp='python -B ~/src/xometry_app/xometry_erp/main.py'
alias api='python -B ~/src/xometry_app/xometry_erp/main_api.py'
alias pyc='find ~/src/xometry_app -name "*.pyc" -exec rm -f {} \;'

# Fixes vim-airline inside tmux
export TERM=screen-256color
