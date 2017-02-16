# install zplug if missing
if ! type zplug > /dev/null; then
    curl -sL zplug.sh/installer | zsh
fi

# load zplug
source ~/.zplug/init.zsh

COMPLETION_WAITING_DOTS="true"
DISABLE_CORRECTION="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)

# load oh-my-zsh library
zplug "robbyrussell/oh-my-zsh", use:"oh-my-zsh.sh"

zplug "plugins/gitfast", from:oh-my-zsh, defer:3
zplug "plugins/ssh-agent", from:oh-my-zsh, defer:3
zplug "plugins/gem", from:oh-my-zsh, defer:3
zplug "plugins/npm", from:oh-my-zsh, defer:3
zplug "plugins/yarn", from:oh-my-zsh, defer:3
zplug "plugins/rbenv", from:oh-my-zsh, defer:3
zplug "themes/lukerandall", from:oh-my-zsh

zplug "chrissicool/zsh-256color" # ZSH plugin enhances the terminal environment with 256 colors.
zplug "zsh-users/zsh-syntax-highlighting" # Syntax highlighting bundle.
zplug "zsh-users/zsh-history-substring-search" # Fish shell's history search functionality bundle.
zplug "zsh-users/zsh-completions" # Additional completion definitions for Zsh.
zplug "zsh-users/zsh-autosuggestions" # Fish-like autosuggestions for zsh bundle.

# Load if "if" tag returns true
# zplug "lib/clipboard", if:"[[ $OSTYPE == *darwin* ]]"

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
    zplug install
fi

# Then, source plugins and add commands to $PATH
zplug load

# Load aliases and functions files
source ~/.aliases.sh
source ~/.functions.sh
