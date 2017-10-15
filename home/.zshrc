# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# import aliases from separate file
[ -f ~/.sh_aliases ] && . ~/.sh_aliases

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Go source and packages
export GOPATH=$HOME/go

# Don't confirm substitutions before executing
setopt no_hist_verify

# Allow jumping to directories just by typing its name
setopt autocd

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gem git github heroku zeus)

export NODE_REPL_HISTORY_FILE=$HOME/.node_repl_history

# Fix for slow git completion in large git repos
__git_files () {
  _wanted files expl 'local files' _files
}

function psgrep() { ps aux | grep -v grep | grep "$@" -i --color=auto; }

function weather() { curl "http://wttr.in/$1";}

rationalize-dot() {
  if [[ $LBUFFER = *.. ]]; then
    LBUFFER+=/..
  else
    LBUFFER+=.
  fi
}
zle -N rationalize-dot
bindkey . rationalize-dot

source $ZSH/oh-my-zsh.sh
source $HOME/z/z.sh
source $HOME/.secrets

# Customize to your needs...

export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH
export PATH=$PATH:/usr/share
export PATH=$PATH:/Applications/Postgres93.app/Contents/MacOS/bin
export PATH=$PATH:$EC2_HOME/AWS-ElasticBeanstalk-CLI-2.2/api/bin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.nvm
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/QGIS.app/Contents/MacOS/bin
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

source $HOME/.nvm/nvm.sh
[ -f $HOME/.rvm/scripts/rvm ] && source $HOME/.rvm/scripts/rvm

# pip should only run if there is a virtualenv currently activated
# export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
# export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
# export VIRTUAL_ENV_DISABLE_PROMPT=true

# For virtualenvwrapper
# export WORKON_HOME=$HOME/.virtualenvs
# VIRTUALENVWRAPPER_PYTHON=$HOME/.virtualenvs/py3/bin/python
# source $HOME/.virtualenvs/py/bin/activate
# #source /usr/local/bin/virtualenvwrapper.sh
# #export PYTHONPATH=$HOME/Projects/duolingo-2
# export PYTHONPATH=$PYTHONPATH:/Applications/QGIS.app/Contents/Resources/python

# added by travis gem
[ -f $HOME/.travis/travis.sh ] && source $HOME/adam/.travis/travis.sh

export EDITOR=vim

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
