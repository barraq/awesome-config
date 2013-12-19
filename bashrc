#######################################################################
#
# Collection of good tips gathered around.
#
# Links:
# - http://natelandau.com/my-mac-osx-bash_profile/
#
#######################################################################

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Set Default Editor (change 'vim' to the editor of your choice)

export EDITOR=/usr/bin/vim

#   Set Paths

# export PATH=$PATH

#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------

alias ls='ls -G'
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ls; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview

# source extra alias
if [[ -f ~/.aliasrc ]]; then
    source ~/.aliasrc
fi

#   ---------------------------------------
#   3.  DEVELOPMENT
#   ---------------------------------------

# Java

# export JAVA_HOME=$JAVA_HOME
# export JFXRT_HOME=$JFXRT_HOME

# Ruby

# export GEM_HOME=$GEM_HOME

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt
