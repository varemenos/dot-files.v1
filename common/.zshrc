# load zplug
source ~/.zplug/init.zsh

COMPLETION_WAITING_DOTS="true"
DISABLE_CORRECTION="true"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)

# zplug, self manage mode (self update)
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# load oh-my-zsh library
zplug "robbyrussell/oh-my-zsh", use:"oh-my-zsh.sh"

# load oh-my-zsh plugins and themes
zplug "plugins/gitfast", from:oh-my-zsh, defer:3
zplug "plugins/ssh-agent", from:oh-my-zsh, defer:3
zplug "plugins/gem", from:oh-my-zsh, defer:3
zplug "plugins/npm", from:oh-my-zsh, defer:3
zplug "plugins/yarn", from:oh-my-zsh, defer:3
zplug "plugins/rbenv", from:oh-my-zsh, defer:3
zplug "plugins/fzf", from:oh-my-zsh, defer:3
zplug "plugins/z", from:oh-my-zsh, defer:3
# zplug "themes/lukerandall", from:oh-my-zsh
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

if [[ $CURRENT_OS == 'MAC OS' ]]; then; USE_OS="darwin"; else; USE_OS="linux"; fi

zplug "sharkdp/bat", as:command, from:gh-r, rename-to:"bat", use:"*$USE_OS*", defer:3
zplug "ogham/exa", as:command, from:gh-r, rename-to:"bat", use:"*$USE_OS*", defer:3
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:"fzf", defer:3
zplug "wfxr/emoji-cli", as:command, use:'emojify|fuzzy-emoji', defer:3
if [[ $CURRENT_OS == 'MAC_OS' ]]; then
	zplug "sharkdp/bat", as:command, from:gh-r, rename-to:"bat", if:"[[ $OSTYPE == *darwin* ]]", defer:3
else
	zplug "sharkdp/bat", as:command, from:gh-r, rename-to:"bat", use:"*x86_64*linux*", defer:3
fi

if [[ $TERM_PROGRAM == 'iTerm.app' ]]; then
	zplug "tysonwolker/iterm-tab-colors", defer:3 # change the color of iterm based on the PWD
fi

zplug "chrissicool/zsh-256color" # ZSH plugin enhances the terminal environment with 256 colors.
zplug "zsh-users/zsh-history-substring-search" # Fish shell's history search functionality bundle.
zplug "zsh-users/zsh-completions" # Additional completion definitions for Zsh.
zplug "zsh-users/zsh-autosuggestions" # Fish-like autosuggestions for Zsh.

# Install plugins if there are plugins that have not been installed
if ! zplug check; then
	zplug install
fi

# Then, source plugins and add commands to $PATH
zplug load

# Load aliases and functions files
source ~/.aliases.sh
source ~/.functions.sh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

zplug "zsh-users/zsh-syntax-highlighting", defer:3 # Syntax highlighting bundle.
# https://github.com/zsh-users/zsh-syntax-highlighting#why-must-zsh-syntax-highlightingzsh-be-sourced-at-the-end-of-the-zshrc-file
