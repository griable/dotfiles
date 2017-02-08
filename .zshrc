# Load Antigen
source $(brew --prefix)/share/antigen/antigen.zsh

# Set Antigen default repo
antigen use oh-my-zsh

# Antigen Bundles
antigen bundle brew
antigen bundle git
antigen bundle common-aliases

antigen bundle mafredri/zsh-async
antigen bundle rupa/z
antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

# Tell antigen that you're done.
antigen apply

# Set default editor
export EDITOR=vim

# Set locales
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Load local configuration if found
if [ -f ~/.zshrc-local ]; then
  source .zshrc-local
fi
