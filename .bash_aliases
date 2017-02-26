# Functions

base64encode() {
  openssl base64 < $1 | tr -d '\n' | pbcopy
}

function _dte {
 ruby -e "require 'date'; puts Date.parse('$1').to_time.to_i * 1000"
}

# S3
alias ats3=s3env
alias sts3=studios3

# Git
alias g='git'
alias gits='git status'
alias gs='git status'

# Utilities
alias dte=_dte
alias bp='subl ~/.bash_profile'
alias sbp='source ~/.bash_profile'
alias grep='grep --color'                                       #all greps will have color
alias dud='du -sh *'                                            #file size of all files in current directory
alias psa='ps aux | grep -i $1'                                 #finds process with provided name
alias l.='ls -d .*'                                             #list hidden files
alias newcolor='osascript $MYSCRIPTS/RandomColorTerminal.scpt'  #randomly assigns new color to terminal
alias gitk='subl ~/.gitknowledge'
alias dotfiles='subl ~/.bash_profile && subl ~/.bash_colors && subl ~/.bash_aliases'
alias localip='ipconfig getifaddr en0'
alias getip='echo `ipconfig getifaddr en0` | pbcopy'
alias encodeimg=base64encode
alias rubyserver="ruby -rwebrick -e'WEBrick::HTTPServer.new(:Port => 8000, :DocumentRoot => Dir.pwd, :SSLEnable => true, :SSLCertName => %w[CN localhost]).start'"
alias ls='ls -G'
alias iossim='open /Volumes/Macintosh\ HD/Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app/'

# MYSQL
alias mystart='/usr/local/bin/mysql.server start'               #starts mysql
alias mystop='/usr/local/bin/mysql.server stop'                 #stops mysql

# Rails
alias be='bundle exec'
alias rs='rails server'
alias rc='rails console'
alias rg='rails generate'
alias rannotate='annotate -i --exclude tests,fixtures,factories,serializers'

# Navigation
alias android='cd ~/Library/Android/sdk/platform-tools'
