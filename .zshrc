# Git Prompt
source $HOME/.zsh/git-prompt/zshrc

# Some custom search paths
export PATH="$HOME/Scripts:/usr/local/bin:$HOME/pear/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export RUBYLIB="/usr/local/lib/ruby/site_ruby"

# Colors
export TERM="xterm-256color"
export CLICOLOR=1

# Prompt
autoload -U colors && colors
autoload -U promptinit && promptinit
PROMPT='%F{yellow}${(%):-%~}%f$(git_super_status) %F{white}%#%f '

# Typo correction
setopt correctall

# Up the ULIMIT
ulimit -n 2048

# RVM
. /usr/local/rvm/scripts/rvm
