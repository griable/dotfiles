# Load zplug
source $(brew --prefix)/opt/zplug/init.zsh

# zplug Bundles
zplug plugins/common-aliases, from:oh-my-zsh
zplug plugins/git, from:oh-my-zsh

zplug 'mafredri/zsh-async'
zplug 'rupa/z', use:'*.sh'
zplug 'sindresorhus/pure'
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'zsh-users/zsh-history-substring-search'

# zplug check returns true if all packages are installed
# # Therefore, when it returns false, run zplug install
if ! zplug check; then
  zplug install
fi

# Tell zplug that you're done.
zplug load

# Set default editor
export EDITOR=vim

# Set locales
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Load local configuration if found
if [ -f ~/.zshrc-local ]; then
  source ~/.zshrc-local
fi
