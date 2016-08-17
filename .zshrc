# Git Prompt
source $HOME/.zsh/git-prompt/zshrc

alias clean-branches="git branch --merged master | grep -v "\master" | xargs -n 1 git branch -d"
alias doug-kill="ps -ef | fzf --multi --header-lines=1 | awk '{ print $2 }' | xargs -t kill -9"
alias serve="ruby -run -e httpd . -p 9090"

# zsh options
setopt hist_ignore_dups # duplicate ignoring
setopt correctall # typo correction

# Some custom search paths
export PATH="$HOME/Scripts:$HOME/bin:/usr/local/bin:/usr/local/sbin:$HOME/pear/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/Scripts/AWS-ElasticBeanstalk-CLI-2.4.0/eb/macosx/python2.7:$PATH"

# Colors
export TERM="screen-256color"
export CLICOLOR=1
export JAVA_HOME=$(/usr/libexec/java_home)

# editor
export EDITOR="vim"

# Prompt
autoload -U colors && colors
autoload -U compinit && compinit
autoload -U promptinit && promptinit
PROMPT='%F{yellow}${(%):-%~}%f$(git_super_status) %F{white}%#%f '

# Up the ULIMIT
ulimit -n 2048

# Added by the Heroku Toolbelt
export PATH="/usr/local/sbin:/usr/local/heroku/bin:$PATH"

# bind keys
bindkey -e

alias be="bundle exec"
alias gpr="git pull-request"

export DEFAULT_RELEASE_NOTIFICATION_RECIPIENT="all-up-in-technology@gforums.com"
export GRADLE_HOME="/opt/boxen/homebrew/Cellar/gradle/2.14/libexec"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"

# boxen
source /opt/boxen/env.sh
