# Set the path
export PATH="~/Scripts:$PATH"
. /usr/local/rvm/scripts/rvm

# Alias vim to vi
alias vim="vi"

# Colors!
export CLICOLOR=1

# some aliases
alias ack=ack-grep

# i work for brewster
export BREWSTER_USER=john

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
