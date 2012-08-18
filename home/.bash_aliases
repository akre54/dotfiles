alias cims='ssh access.cims.nyu.edu -l amk528'
alias i4='ssh i4.nyu.edu -l amk528'
alias farmtab='ssh farmtab.com -l farmtab'
alias sberkmada='ssh sberkmada.com -l akrebs'

alias sudo='sudo ' # bash trick to allow sudo to work with aliases
alias rm='rm -i'

#get window class (useful for Maximus exceptions in gconf-editor)
alias WM_CLASS='xprop |grep WM_CLASS'

#launch jgrasp
alias jgrasp='/home/adam/Downloads/jgrasp/bin/jgrasp'

#launch Alchemy
alias Alchemy="/home/adam/Downloads/Alchemy/Alchemy"

#source the xtc installation
alias srcxtc='. /home/adam/Downloads/xtc/setup.sh'

#link my .gitignore every time I checkout, prevents it from being overwritten
alias lngit='ln -s /home/adam/Documents/oopgitignore .gitignore'

#git stuff
alias git-publish-branch='ruby /home/adam/Downloads/git-publish-branch.sh'
alias git-wtf='ruby /home/adam/Downloads/git-wtf.sh'

#Android development
alias logcat='python /home/adam/Downloads/android-sdk-linux_x86/tools/coloredlogcat.py'

alias spotify='wine "C:\Program Files\Spotify\spotify.exe"'

. ~/.git-completion.bash
export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\u@\h:\W\$(__git_ps1 '(%s)')$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM
