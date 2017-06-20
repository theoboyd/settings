# in ~/.bash_profile
# Homebrew binaries now take precedence over Apple defaults
export PATH=/usr/local/bin:$PATH
alias la="ls -lah"
alias up="cd .."
alias python='python3'
alias quit='killall Terminal'
alias mvim='/Applications/MacVim.app/Contents/MacOS/Vim -g'

# Tab cycles candidates for cd
bind '"\t":menu-complete'

export CLICOLOR=1
export LSCOLORS=exFxCxDxbxegedabagaced
export PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'
export PS1='\[\033[02;32m\]\u\[\033[00m\] \[\033[02;33m\]${PS1X}\[\033[00m\]\$ '

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
