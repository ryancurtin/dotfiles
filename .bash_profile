# Loading all bash scripts
source ~/.git-completion
source ~/.bash_aliases
source ~/.bash_colors
source ~/.bashrc

# Git branch formatting
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH"

# Utilities
export GREP_COLOR='1;37;41'
export MYSCRIPTS=$HOME/Library/Scripts
export EDITOR=subl
export MEMCACHED=true

# Golang
export GOPATH=$HOME/src/golang

# Android Studio
export STUDIO_JDK=/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH=/usr/local/bin:$PATH
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/:$PYTHONPATH
