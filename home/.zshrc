# Start configuration added by Zim install {{{
#
# User configuration sourced by interactive shells
#

# -----------------
# Zsh configuration
# -----------------

#
# History
#

# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS

#
# Input/output
#

# Set editor default keymap to emacs (`-e`) or vi (`-v`)
bindkey -e

# Prompt for spelling correction of commands.
#setopt CORRECT

# Customize spelling correction prompt.
#SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}

# --------------------
# Module configuration
# --------------------

#
# completion
#

# Set a custom path for the completion dump file.
# If none is provided, the default ${ZDOTDIR:-${HOME}}/.zcompdump is used.
#zstyle ':zim:completion' dumpfile "${ZDOTDIR:-${HOME}}/.zcompdump-${ZSH_VERSION}"

#
# git
#

# Set a custom prefix for the generated aliases. The default prefix is 'G'.
#zstyle ':zim:git' aliases-prefix 'g'

#
# input
#

# Append `../` to your input for each `.` you type after an initial `..`
#zstyle ':zim:input' double-dot-expand yes

#
# termtitle
#

# Set a custom terminal title format using prompt expansion escape sequences.
# See http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html#Simple-Prompt-Escapes
# If none is provided, the default '%n@%m: %~' is used.
#zstyle ':zim:termtitle' format '%1~'

#
# zsh-autosuggestions
#

# Customize the style that the suggestions are shown with.
# See https://github.com/zsh-users/zsh-autosuggestions/blob/master/README.md#suggestion-highlight-style
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

#
# zsh-syntax-highlighting
#

# Set what highlighters will be used.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Customize the main highlighter styles.
# See https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters/main.md#how-to-tweak-it
#typeset -A ZSH_HIGHLIGHT_STYLES
#ZSH_HIGHLIGHT_STYLES[comment]='fg=10'

# ------------------
# Initialize modules
# ------------------

if [[ ${ZIM_HOME}/init.zsh -ot ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Update static initialization script if it's outdated, before sourcing it
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh

# ------------------------------
# Post-init module configuration
# ------------------------------

#
# zsh-history-substring-search
#

# Bind ^[[A/^[[B manually so up/down works both before and after zle-line-init
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Bind up and down keys
zmodload -F zsh/terminfo +p:terminfo
if [[ -n ${terminfo[kcuu1]} && -n ${terminfo[kcud1]} ]]; then
  bindkey ${terminfo[kcuu1]} history-substring-search-up
  bindkey ${terminfo[kcud1]} history-substring-search-down
fi

bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
# }}} End configuration added by Zim install

export EDITOR=vim
export VISUAL=vim
export NODE_REPL_HISTORY_FILE=$HOME/.node_repl_history
export NODE_OPTIONS="--max-old-space-size=8192"
export NVM_COMPLETION=true
export NVM_AUTO_USE=true

export GOPATH=$HOME/go
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME=/usr/local/Caskroom/android-sdk/4333796
export NVM_DIR="$HOME/.nvm"

export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH=$PATH:/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin
export PATH=$PATH:/usr/share
export PATH=$PATH:/Applications/Postgres93.app/Contents/MacOS/bin
export PATH=$PATH:$EC2_HOME/AWS-ElasticBeanstalk-CLI-2.2/api/bin
export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$NVM_DIR
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/Applications/QGIS.app/Contents/MacOS/bin

test -e $HOME/.iterm2_shell_integration.zsh && source $HOME/.iterm2_shell_integration.zsh

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Don't confirm substitutions before executing
setopt NO_HIST_VERIFY

[ -f $NVM_DIR ] && source $NVM_DIR/nvm.sh
nvm use --silent

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

function cheat() { curl cht.sh/$1; }

function weather() { curl "http://wttr.in/$1";}
brew analytics off 2>&1 >/dev/null


export PATH="$HOME/.poetry/bin:$PATH"
