# Homebrew binaries now take precedence over Apple defaults
export PATH=/usr/local/bin:/usr/local/php5/bin:~/.composer/vendor/bin:$PATH
# Setting PATH for Python 3.6
#export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH="/usr/local/opt/opencv3/bin:$PATH"

alias la="ls -lAhO@Few"
alias up="cd .."
alias gpom="git push -u origin master"
alias gs="git status"
alias gd="git difftool"
alias quit='killall Terminal'
alias mvim='/Applications/マ改良視覚.app/Contents/MacOS/Vim -g'

# Tab cycles candidates for cd
bind '"\t":menu-complete'
bind '"\e[Z":"\e-1\C-i"'

export CLICOLOR=1
export LSCOLORS=exFxCxDxbxegedabagaced
#export PROMPT_COMMAND='PS1X=$(p="${PWD#${HOME}}"; [ "${PWD}" != "${p}" ] && printf "~";IFS=/; for q in ${p:1}; do printf /${q:0:1}; done; printf "${q:1}")'
#export PS1='\[\033[02;32m\]\u\[\033[00m\] \[\033[02;33m\]${PS1X}\[\033[00m\]\$ '

function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


if [ -f ~/.git-completion.bash ]; then
      . ~/.git-completion.bash
fi

# Additional prompt command for setting window title (needed when using SSH to reset the title of Terminal.app after switching machine in macOS)
export PROMPT_COMMAND="echo -ne '\033]0;${USER}@${HOSTNAME}\007';$PROMPT_COMMAND"

alias sshjump="ssh -t t.gatewayusername@10.GATEWAY.1.1 ssh -i $HOME/.ssh/id_rsa.pub t.endusername@192.END.1.1"
alias sshgate="ssh -l t.gatewayusername 10.GATEWAY.1.1"
alias mountgate="sudo sshfs -o allow_other,defer_permissions t.gatewayusername@10.GATEWAY.1.1:/ /Volumes/storage"
alias mountgatefix="echo -e 'pgrep -lf sshfs\nsudo kill -9 (%pid%)\nsudo umount -f /Volumes/storage/'"

mysql.server start
brew services start mongodb
