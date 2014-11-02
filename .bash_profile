# Loading all bash scripts
source ~/.git-completion
source ~/.bash_aliases
source ~/.bash_colors

# Git branch formatting
function detect_branch {
  export BRANCH=`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`;
  if [ "$BRANCH" == "production" ] || [ "$BRANCH" == "preproduction" ]; then echo -e '\033[31m['$BRANCH']\033[0m'; elif [ "$BRANCH" == "master" ]; then echo -e '\033[35m['$BRANCH']\033[0m'; elif [ "$BRANCH" != "" ]; then echo -e '\033[36m['$BRANCH']\033[0m'; fi
}
export PS1="\W\$(detect_branch) \u$ "

export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH"

# Spongecell Vars
export RAILS_LOG=true
export ES_USE_RAILS_LOG=false
export ES_PRETTY_PRINT=true
export STOCK_CHART=false
export MEMCACHED=false
export PATH=/usr/local/share/npm/bin:$PATH:/Applications/Postgres93.app/Contents/MacOS/bin

# Utilities
export GREP_COLOR='1;37;41'
export MYSCRIPTS=$HOME/Library/Scripts
export EDITOR=subl

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
