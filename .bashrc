# .bashrc # Source global definitions if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
PATH="${PATH[*]}:.:" # PATH=$PATH:. also works
cd ~/test # home folder

# Prompts
#PS1=[\u@\h \W]\$ # Default: [galfisher@t2 mtm]$
#PS1='${debian_chroot:+($debian_chroot)}[\t]\w\$ ' # No colors: ~/mtm
PS1='${debian_chroot:+($debian_chroot)}\[\e[0;33m\][\t]\w\$\[\e[m\] ' # One color: ~/mtm
#PS1="\[\e[0;36m\][\e[m\]\[\e[0;32m\]\t\[\e[0;36m\]]\e[m\]\[\e[0;36m\]\[\e[1;33m\]\w\[\e[m\]\[\e[1;30m\] \$\[\e[m\] " # Colors [17:20:16]~/mtm/ex1 $

# Aliases
alias test='cd ~/private/test'
alias pythonn='cd ~/private/python/google-python-exercises'
alias aliases='cat ~/.bashrc | grep alias'
alias bashrc='vim ~/.bashrc; source ~/.bashrc' # source to apply changes
alias hist='history 5'
alias swp='rm .*swp*'
alias grepp='grep -inIr' # searches in file contents

# For MTM
#alias note='vim ~/mtm/ex1/*'
#alias gccf='gcc -std=c99 -Wall -pedantic-errors -Werror -DNDEBUG -g' # code.c -o out # debug
#alias gccfm='gcc -std=c99 -Wall -pedantic-errors -Werror -DNDEBUG -g -lm' # code.c -o out #debug+math
#alias check='~mtm/public/1415a/ex1/final_check hw1-sol.zip'
#alias e='vim ~/mtm/ex4/*.cpp'
# alias r='gcc -std=c99 -o mtm_raildb -g -Wall -pedantic-errors -Werror -lm *.c; ./mtm_raildb -i test.txt'
#alias v='gcc -std=c99 -o mtm_raildb -g -Wall -pedantic-errors -Werror -lm *.c; valgrind --leak-check=full ./mtm_raildb -i test.txt'
#alias g='gcc -std=c99 -o mtm_raildb -g -Wall -pedantic-errors -Werror *.c;'
