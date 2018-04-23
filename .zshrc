# Load zplug
source $(brew --prefix)/opt/zplug/init.zsh

# zplug Bundles
zplug plugins/common-aliases, from:oh-my-zsh
zplug plugins/git, from:oh-my-zsh
zplug plugins/git-flow-avh, from:oh-my-zsh

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

# Custom aliases
alias gmd='git fetch --prune && git branch --merged=origin/develop|grep "\b/\b"|xargs git branch -d'
alias gmdd='git branch --merged=origin/develop|grep "\b/\b"|xargs git branch -d'

# History
HISTSIZE=5000            #How many lines of history to keep in memory
HISTFILE=~/.zsh_history  #Where to save history to disk
SAVEHIST=5000            #Number of history entries to save to disk
HISTDUP=erase            #Erase duplicates in the history file
setopt appendhistory     #Append history to the history file (no overwriting)
setopt sharehistory      #Share history across terminals
setopt incappendhistory  #Immediately append to the history file, not just when a term is killed

