# Git
alias g='git'
alias gits='git status'
alias gs='git status'

# Utilities
alias bp='subl ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias grep='grep --color'                                       #all greps will have color
alias dud='du -sh *'                                            #file size of all files in current directory
alias psa='ps aux | grep -i $1'                                 #finds process with provided name
alias l.='ls -d .*'                                             #list hidden files
alias newcolor='osascript $MYSCRIPTS/RandomColorTerminal.scpt'  #randomly assigns new color to terminal
alias gitk='subl ~/.gitknowledge'
alias dotfiles='subl ~/.bash_profile && subl ~/.bash_colors && subl ~/.bash_aliases'

# MYSQL
alias mystart='/usr/local/bin/mysql.server start'               #starts mysql
alias mystop='/usr/local/bin/mysql.server stop'                 #stops mysql

# Rails
alias be='bundle exec'                                          
alias rs='rails server'
alias rc='rails console'
alias rg='rails generate'
