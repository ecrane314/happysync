# 1 Shell considerations incl formatting, alias, autocomplete
# 2 Languages
# 3 SDKs

# Turn off brew analytics, autocompletion
export HOMEBREW_NO_ANALYTICS=1

#brew command for general terminal autocomplete including docker
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


# Don't put duplicate lines in your bash history limit (100KB or 5K entries)
export HISTCONTROL=ignoredups
export HISTFILESIZE=100000
export HISTSIZE=5000

# Color
export CLICOLOR=1
#export TERM=xterm-color

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\l:\[\033[33;1m\]\W\[\033[m\]\$ "
#export PS1="\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] "

export GREP_OPTIONS='--color=auto'
export LSCOLORS=GxFxBxDxCxegedabagacad
#export LSCOLORS=gxfxcxdxbxegedabagacad # Dark, old
# http://linux-sxs.org/housekeeping/lscolors.html
# https://geoff.greer.fm/lscolors/

# Alias
alias ll="ls -lh"
alias python="python3"
alias py37="source ~/develop/env37/bin/activate"
alias py36="source ~/develop/env36/bin/activate"
alias py27="source ~/develop/env27/bin/activate"
alias gs="git status"


# Setting PATH for Python 3.7
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
PATH=$PATH:/Users/evancrane/Library/Python/2.7/bin
export PATH


#GOPATH set for golang in my dev folder
if [ -d /usr/local/bin/go/ ]; then export GOPATH='/usr/local/bin/go' ; fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/$(whoami)/google-cloud-sdk/path.bash.inc ]; then source /Users/$(whoami)/google-cloud-sdk/path.bash.inc; fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/$(whoami)/google-cloud-sdk/completion.bash.inc ]; then source /Users/$(whoami)/google-cloud-sdk/completion.bash.inc; fi

