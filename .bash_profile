
export CLICOLOR=1
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export LSCOLORS=ExFxBxDxCxegedabagacad

# Turn off brew analytics
export HOMEBREW_NO_ANALYTICS=1

alias lsl="ls -la"
export D="/Users/evancrane/Develop/"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/evancrane/Develop/google-cloud-sdk/path.bash.inc' ]; then source '/Users/evancrane/Develop/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/evancrane/Develop/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/evancrane/Develop/google-cloud-sdk/completion.bash.inc'; fi
