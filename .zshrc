# Git Prompt
source $HOME/.zsh/git-prompt/zshrc

# Some custom search paths
export PATH="$HOME/Scripts:/usr/local/bin:$HOME/pear/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export RUBYLIB="/usr/local/lib/ruby/site_ruby"

# Colors
export TERM="screen-256color"
export CLICOLOR=1
export JAVA_HOME="/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home"

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
PATH=$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
