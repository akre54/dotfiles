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

# Don't confirm substitutions before executing
setopt no_hist_verify

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)


# Fix for slow git completion in large git repos
__git_files () {
  _wanted files expl 'local files' _files
}

function psgrep() { ps aux | grep -v grep | grep "$@" -i --color=auto; }

source $ZSH/oh-my-zsh.sh
source $HOME/z/z.sh
source $HOME/.secrets

# Customize to your needs...

PATH=$PATH:/usr/share:/usr/local/heroku/bin
PATH=$PATH:$EC2_HOME/AWS-ElasticBeanstalk-CLI-2.2/api/bin
PATH=$PATH:$HOME/Developer/android-sdk-macosx/platform-tools
PATH=$PATH:$HOME/pear/bin
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/nvm
. $HOME/nvm/nvm.sh

