### OS Detection
UNAME=`uname`
if [[ $UNAME == 'Darwin' ]]; then
	CURRENT_OS='OS X'
elif [[ $UNAME == 'Linux' ]]; then
	CURRENT_OS='Linux'
else
	CURRENT_OS='Unknown'
fi

# turn off useless bloating globals usually set by distros
setopt no_global_rcs

# ignore history duplicates and space
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE

# Set Language
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export CURRENT_OS=$CURRENT_OS

# Python version missmatch in Arch
if [[ $CURRENT_OS == 'Linux' ]]; then
	export PYTHON=python2
fi

# Load NVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

# Tell NVM to symlink the currently selected node version
export NVM_SYMLINK_CURRENT=true

# Homebrew fixes
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# load RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
# Extras, like shims and autocompletion
[[ -s $HOME/.rbenv/bin/rbenv ]] && eval "$(rbenv init -)"

# load ellipsis.sh
export PATH=~/.ellipsis/bin:$PATH

# Set CHROME_BIN for karma
if [[ $CURRENT_OS == 'Linux' ]]; then
	export CHROME_BIN=google-chrome-stable
fi

# Set GOROOT-based install location
PATH=$PATH:/usr/local/opt/go/libexec/bin

# Set GOPATH
export GOPATH=~/.go

# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
