
export CLICOLOR=1
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export LSCOLORS=ExFxBxDxCxegedabagacad

# Turn off brew analytics
export HOMEBREW_NO_ANALYTICS=1

alias ll="ls -la"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/google-cloud-sdk/path.bash.inc' ]; then source '/usr/local/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/google-cloud-sdk/completion.bash.inc' ]; then source '/usr/local/google-cloud-sdk/completion.bash.inc'; fi
/Users/evancrane/.bash_profile

export CLICOLOR=1
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export LSCOLORS=ExFxBxDxCxegedabagacad

# Turn off brew analytics
export HOMEBREW_NO_ANALYTICS=1

alias ll="ls -la"
alias python="python3"
alias py37="source ~/develop/env3/bin/activate"
alias py36="source ~/develop/env36/bin/activate"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/evancrane/google-cloud-sdk/path.bash.inc' ]; then source '/Users/evancrane/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/evancrane/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/evancrane/google-cloud-sdk/completion.bash.inc'; fi

# Deprecating python2, should try to remove
#PATH=$PATH:'/Users/evancrane/Library/Python/2.7/bin'

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH


Add the following line to your ~/.bash_profile:
 [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
