# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/go/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=${HOME}/.oh-my-zsh

alias clean-branches="git branch --merged main | grep -v "\main" | xargs -n 1 git branch -d"
alias doug-kill="ps -ef | fzf --multi --header-lines=1 | awk '{ print $2 }' | xargs -t kill -9"
alias serve="ruby -run -e httpd . -p 9090"
alias rubogit='bin/rubocop `git diff --name-only ; git diff --name-only --staged`'

git config --global core.editor $(which vim)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

# use utf8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
eval "$(rbenv init -)"

alias be="bundle exec"

alias rhaste="go run ~/go/src/github.com/seejohnrun/rhaste/main.go"
alias ct="ctags -R -f ./.git/tags ."
export PATH="/usr/local/sbin:$PATH"
export GITHUB_PATH=~/github/github

eval "$(nodenv init -)"

alias asoc="ag 'associated_repository_ids' --ignore-dir="test" --ignore=app/models/user/associated_repositories_dependency.rb --ignore=app/controllers/orgs/project_cards_controller.rb --ignore=app/models/contribution/visibility_checker.rb --ignore=app/controllers/stars_controller.rb --ignore=app/api/access_control/roles_dependency.rb | ag -v 'repository_ids:' | ag --stats -v '\s+#'"

export EDITOR=vim
export PAGER=bat
export DISABLE_AUTO_TITLE="true"
