# Git Prompt
source $HOME/.zsh/git-prompt/zshrc

alias clean-branches="git branch --merged master | grep -v "\master" | xargs -n 1 git branch -d"
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

# editor
export EDITOR="vim"

# Prompt
autoload -U colors && colors
autoload -U compinit && compinit
autoload -U promptinit && promptinit
PROMPT='%F{yellow}${(%):-%~}%f$(git_super_status) %F{white}%#%f '

# Up the ULIMIT
ulimit -n 2048

# bind keys
bindkey -e

alias be="bundle exec"
alias gpr="git pull-request"
