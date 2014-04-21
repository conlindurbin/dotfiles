export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cmcd"


source $ZSH/oh-my-zsh.sh

# User configuration

plugins=(git, rails, ssh-agent, cp, npm, node, powder, history, brew, coffee, web-search, thor, tmux, taskwarrior, python, sudo, themes)

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
export MANPATH="/usr/local/man:$MANPATH"

export LANG=en_US.UTF-8

source ~/.aliases
source ~/.functions

export EDITOR="v"

export SSH_KEY_PATH="~/.ssh/id_rsa"

# History
HISTFILE=~/.zsh_history         # where to store zsh config
HISTSIZE=1024                   # big history
SAVEHIST=1024                   # big history
setopt append_history           # append
setopt hist_ignore_all_dups     # no duplicate
unsetopt hist_ignore_space      # ignore space prefixed commands
setopt hist_reduce_blanks       # trim blanks
setopt hist_verify              # show before executing history commands
setopt inc_append_history       # add commands as they are typed, don't wait until shell exit 
setopt share_history            # share hist between sessions
setopt bang_hist                # !keyword

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/Library/Perl/5.16/auto/share/dist/Cope":$PATH
export PATH="~/.bin":$PATH

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LC_ALL="en_US.UTF-8"
eval "$(rbenv init -)"
setopt NO_BEEP
