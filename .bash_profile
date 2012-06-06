# Set the path
export PATH="~/Scripts:~/Development/ino/bin:/usr/local/bin:~/pear/bin:$PATH"

# Alias vim to vi
alias vim="vi"

# Increase ULIMIT
ulimit -n 1024

# Colors!
export CLICOLOR=1

# i work for brewster
export BREWSTER_USER=john

# export GREP_OPTIONS='--color=auto -n'
# export GREP_COLOR='0;93'

# ps1 with git
GIT_COMPLETION_PATH=/etc/bash_completion.d/git
if [ -f $GIT_COMPLETION_PATH ]; then
  . $GIT_COMPLETION_PATH
  GIT_PS1_SHOWDIRTYSTATE=true # */+ for dirty
  GIT_PS1_SHOWSTASHSTATE=true # $ for stashes
  GIT_PS1_SHOWUNTRACKEDFILES=true # % for untracked
fi

# Give some nice prompt, with git inside of it
export PS1="\e[0;33m\w\e[0;91m\$(__git_ps1 ' (%s)')\e[0;96m \$\e[0m "

export TERM=xterm-256color
