# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=()

source $ZSH/oh-my-zsh.sh
unsetopt correct

# Customize to your needs...
bindkey -e
bindkey '^U' backward-kill-line
bindkey "^[OC" forward-word
bindkey "^[OD" backward-word

vi_cv_path_python_plibs="-L/usr/lib/python2.5/config/"
# export PATH='/usr/local/global/bin:/home/jarod-song/local/exuberant_ctags/bin:/home/jarod-song/local/vimmb/bin:PROTON_DIR/src/server/node_modules/.bin:'$PATH
PROTON_HOME=${HOME}/proton
PATH='/usr/local/global/bin:/home/jarod-song/local/exuberant_ctags/bin:/home/jarod-song/local/vimmb/bin:'$PATH
PATH=${PATH}:${PROTON_HOME}/src/server/node_modules/coffee-script/bin
PATH=${PATH}:${PROTON_HOME}/src/server/node_modules/.bin
PATH=${PATH}:${HOME}/.nvm/v0.8.11/bin:~/bin
export PATH
export NODE_PATH=/usr/lib/nodejs
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

# export TERM=xterm-256color

source $HOME/.zsh/z.sh

alias tmux="TERM=screen-256color-bce tmux"

# vim <-> shell
setopt hist_ignore_space
bindkey -s '^z' '^[q %vi^m'

# pythonbrew
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc
