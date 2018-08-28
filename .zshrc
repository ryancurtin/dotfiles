# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=~/Library/Python/3.4/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/ryancurtin/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="rcurtin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# ZSH
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. `brew --prefix`/etc/profile.d/z.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
