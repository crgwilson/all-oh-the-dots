##################
# oh-my-zsh jank #
##################

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

#################
# Antigen Jank! #
#################

# Antigen source path
source /usr/local/share/antigen/antigen.zsh

# Number of days before auto update
export UPDATE_ZSH_DAYS=7

# Be sure to load oh-my-zsh for antigen
antigen use oh-my-zsh

# Antigen packages, my dudes
antigen bundles <<EOBUNDLES
  git
  git-flow
  github
  pip
  gem
  brew
  bundler
  osx
  tmux
  tmuxinator
  command-not-found
  dnf
  jsontools
  desync/vagrant-zsh-completion
  chrissiscool/zsh-256color
  web-search
  colored-man-pages
  hlissner/zsh-autopair
  zsh-users/zsh-autosuggestions
  zsh-users/syntax-highlighting
  zsh-users/zsh-completions
  zsh-users/zsh-history-substring-search
EOBUNDLES

# Freakin powerline is busted with iterm2 again so all the fancy characters
# in spaceship don't currently work
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_DIR_TRUNC=3
antigen apply

###########################
# Regular 'ol shell jank! #
# #########################
export EDITOR='nvim'

alias vi='nvim'
alias vim='nvim'
alias git a='git add -A'
alias git cm='git commit -am'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias mkdir='mkdir -pv'
alias now='date +"%T"'
alias ping='ping -c 3'
