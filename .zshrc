# Git Prompt
source $HOME/.zsh/git-prompt/zshrc

# Some custom search paths
export PATH="$HOME/Scripts:/usr/local/bin:$HOME/pear/bin:$PATH"

# Colors
export TERM="rxvt"
export CLICOLOR=1

# Prompt
autoload -U colors && colors
autoload -U promptinit && promptinit
PROMPT='%F{yellow}${(%):-%~}%f$(git_super_status) %F{white}%#%f '
