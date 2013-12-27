# Git Prompt
source $HOME/.zsh/git-prompt/zshrc

# zsh options
setopt hist_ignore_dups # duplicate ignoring
setopt correctall # typo correction

# Some custom search paths
export PATH="$HOME/Scripts:/usr/local/bin:/usr/local/sbin:$HOME/pear/bin:$PATH"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/Scripts/AWS-ElasticBeanstalk-CLI-2.4.0/eb/macosx/python2.7:$PATH"
export RUBYLIB="/usr/local/lib/ruby/site_ruby"

# Colors
export TERM="screen-256color"
export CLICOLOR=1
export JAVA_HOME="/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home"

# editor
export EDITOR="vim"

# Prompt
autoload -U colors && colors
autoload -U promptinit && promptinit
PROMPT='%F{yellow}${(%):-%~}%f$(git_super_status) %F{white}%#%f '

# Up the ULIMIT
ulimit -n 2048

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# RVM
. /usr/local/rvm/scripts/rvm
export PATH="/usr/local/rvm/gems/ruby-2.0.0-p247/bin:/usr/local/rvm/bin:$PATH" # Add RVM to PATH for scripting

# Added by the Heroku Toolbelt
export PATH="/usr/local/rvm/gems/ruby-2.0.0-p195/bin:/usr/local/sbin:/usr/local/heroku/bin:$PATH"

# Java 7
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

# bind keys
bindkey -e
