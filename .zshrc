# Load Antigen
source $(brew --prefix)/share/antigen/antigen.zsh

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
export LANG=en_US.UTF-8
