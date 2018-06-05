export EDITOR=vim
export VISUAL=vim
export NODE_REPL_HISTORY_FILE=$HOME/.node_repl_history

export ZIM_HOME=${ZDOTDIR:-$HOME}/.zim
export GOPATH=$HOME/go

export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH
export PATH=$PATH:/usr/share
export PATH=$PATH:/Applications/Postgres93.app/Contents/MacOS/bin
export PATH=$PATH:$EC2_HOME/AWS-ElasticBeanstalk-CLI-2.2/api/bin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.nvm
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/QGIS.app/Contents/MacOS/bin
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

test -e $HOME/.iterm2_shell_integration.zsh && source $HOME/.iterm2_shell_integration.zsh

# Don't confirm substitutions before executing
setopt NO_HIST_VERIFY

# Source zim
if [[ -s $ZIM_HOME/init.zsh ]]; then
  source $ZIM_HOME/init.zsh
fi

source $HOME/.nvm/nvm.sh
[ -f $HOME/.rvm/scripts/rvm ] && source $HOME/.rvm/scripts/rvm
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source $HOME/z/z.sh
source $HOME/.secrets

# import aliases from separate file
[ -f ~/.sh_aliases ] && source ~/.sh_aliases

# Fix for slow git completion in large git repos
__git_files () {
  _wanted files expl 'local files' _files
}

function psgrep() { ps aux | grep -v grep | grep "$@" -i --color=auto; }

function weather() { curl "http://wttr.in/$1";}
brew analytics off 2>&1 >/dev/null

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
