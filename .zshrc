# Git Prompt
source $HOME/.zsh/git-prompt/zshrc

# Solarized Colors
BLACK=$'\033[0m'
RED=$'\033[38;5;167m'
GREEN=$'\033[38;5;71m'
BLUE=$'\033[38;5;111m'
YELLOW=$'\033[38;5;228m'
ORANGE=$'\033[38;5;173m'

# Some custom search paths
export PATH="$HOME/Scripts:/usr/local/bin:$HOME/pear/bin:$PATH"

# Colors
export CLICOLOR=1

# Prompt
PROMPT='$YELLOW${(%):-%~}%f$(git_super_status) %F{white}%#%f '
