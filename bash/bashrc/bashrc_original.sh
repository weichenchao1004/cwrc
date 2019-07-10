#https://www.thegeekstuff.com/2008/09/bash-shell-ps1-10-examples-to-make-your-linux-prompt-like-angelina-jolie/
# http://bashrcgenerator.com/
#http://ezprompt.net/
export PS1="\[\e[36m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\][\[\e[33m\]\w\[\e[m\]]\n$ "

export ODBCINI="/Library/ODBC/odbc.ini"

alias tobash='source ~/.bashrc'
alias ll='ls -alF'
alias towuf='cd ~/projects/wuf'
alias tosl='cd ~/projects/rms-sparklines'

PATH=/Applications
PATH=$PATH:/bin:/usr/bin
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/sbin:/sbin
PATH=$PATH:~/rmsrc/bash/bin

# GO Language
PATH=$PATH:/usr/local/go/bin
PATH=$PATH:$HOME/projects/go/bin
export GOPATH=$HOME/projects/go
alias togo='cd $HOME/projects/go'

# added by travis gem
[ -f /Users/rodrigosilveira/.travis/travis.sh ] && source /Users/rodrigosilveira/.travis/travis.sh
