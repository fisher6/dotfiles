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

# Aliases
alias ls='ls -aF'
alias ll='ls -la'
alias l='ls -lartF'
alias home='cd ~'
alias test='cd ~/private/test'
alias pythonn='cd ~/private/python/google-python-exercises'
alias aliases='cat ~/.bashrc | grep alias'
alias bashrc='vim ~/.bashrc; source ~/.bashrc' # source to apply changes
alias hist='history 5'
alias swp='rm .*swp*'
alias grepp='grep -inIr' # searches in file contents
# Git (also git X in .gitconfig)
alias gs='git status' 
# tmux
alias tmux='tmux at'
# Django
alias activate='source ~/ve/bin/activate' # searches in file contents
# X
export PYTHONPATH=/Users/fisher/src
PATH=${PATH}:/usr/local/mongodb/bin
alias killmongo='ps -ef | grep mongod | tr -s " " " " | cut -d" " -f 3,4 | while read line; do if [[ `echo $line | cut -d " " -f2` -eq 1 ]]; then sudo kill -9 `echo $line | cut -d" " -f1`; fi; done'
alias src='cd ~/src'
alias webappd='cd ~/src/nextline_webapp'
alias erpd='cd ~/src/nextline_erp'
alias pricingd='cd ~/src/pricing'
alias apid='cd ~/src/xometry_api'
alias xzibitd='cd ~/src/xzibit'
alias geod='cd ~/src/nextline_geod'
alias engined='cd ~/src/nextline_engine'
alias webapp='python ~/src/nextline_webapp/main.py'
alias erp='python ~/src/nextline_erp/main.py'
alias api='python ~/src/nextline_erp/main_api.py'
alias refreshdb='activate; tar_file=$(aws s3 ls s3://qa.db.archive | tail -n 1 | tr -s " " " " | cut -d" " -f4); aws s3 cp s3://qa.db.archive/${tar_file} /tmp; tar -zxvf /tmp/${tar_file} -C /tmp; mongorestore --host localhost --port 27017 --drop --db xometry /tmp/xometry; rm -rf /tmp/xometry/ /tmp/${tar_file}; echo --- DB restored to ${tar_file} | cut -d"." -f1'

# For MTM
#alias note='vim ~/mtm/ex1/*'
#alias gccf='gcc -std=c99 -Wall -pedantic-errors -Werror -DNDEBUG -g' # code.c -o out # debug
#alias gccfm='gcc -std=c99 -Wall -pedantic-errors -Werror -DNDEBUG -g -lm' # code.c -o out #debug+math
#alias check='~mtm/public/1415a/ex1/final_check hw1-sol.zip'
#alias e='vim ~/mtm/ex4/*.cpp'
# alias r='gcc -std=c99 -o mtm_raildb -g -Wall -pedantic-errors -Werror -lm *.c; ./mtm_raildb -i test.txt'
#alias v='gcc -std=c99 -o mtm_raildb -g -Wall -pedantic-errors -Werror -lm *.c; valgrind --leak-check=full ./mtm_raildb -i test.txt'
#alias g='gcc -std=c99 -o mtm_raildb -g -Wall -pedantic-errors -Werror *.c;'

# Fixes vim-airline inside tmux
export TERM=screen-256color
