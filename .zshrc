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
alias myip='echo `ipconfig getifaddr en0`'
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
alias rannotate='annotate -i -k --exclude tests,fixtures,factories,serializers'

# Golang
export GOPATH=$HOME/src/golang

# Docker
alias cleandocker='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'
alias cleanimages="docker images | grep -v jenkins | grep -v docker-agent | grep -v amazon-ecs-agent | grep -v "REPOSITORY" | awk '{print $3}' | xargs docker rmi"

# OneCloud
export VAULT_ADDR=http://127.0.0.1:8200
export VAULT_MOTHERSHIP_ROLE_ID=TEST
export GATEKEEPER_ROLE_ID=TEST
export GATEKEEPER_SECRET_ID=TEST

alias droplet='cd ~/src/golang/src/onecloud.io/droplet'
alias ocserver='cd ~/src/onecloud/oc-server'
alias mothership='cd ~/src/onecloud/mothership'
alias reaper='cd ~/src/onecloud/reaper'
alias ocbuilder='cd ~/src/onecloud/oc-builder'
alias ocdeps='cd ~/src/onecloud/docker-server'
alias devops='cd ~/src/onecloud/oc-devops'
alias ocvault='cd ~/src/onecloud/vault'
alias startvault='cd ~/src/onecloud/vault/dev_server && sh start.sh'
alias startconsul='cd ~/src/onecloud/vault/dev_server && sh start_consul.sh'
alias gatekeeper='cd ~/src/onecloud/gatekeeper'
alias golang='cd ~/src/golang/src'

# Navigation
alias android='cd ~/Library/Android/sdk/platform-tools'

# Minio
export MINIO_ACCESS_KEY='development_key'
export MINIO_SECRET_KEY='development_secret'

# Postgres (using Postgres.app)
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
