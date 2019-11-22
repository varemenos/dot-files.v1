### OS Detection
UNAME=`uname`
if [[ $UNAME == 'Darwin' ]]; then
	CURRENT_OS='MAC OS'
elif [[ $UNAME == 'Linux' ]]; then
	CURRENT_OS='Linux'
	if [ -f "/etc/arch-release" ]; then
		CURRENT_DISTRO='ARCHLINUX'
	else
		CURRENT_DISTRO='UBUNTU'
	fi
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
	export CURRENT_DISTRO=$CURRENT_DISTRO
	if [[ $CURRENT_DISTRO == 'ARCHLINUX' ]]; then
		export PYTHON=python2
	fi
fi

# Load NVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh

# Tell NVM to symlink the currently selected node version
export NVM_SYMLINK_CURRENT=true

# Automatic 'nvm use'
export NVM_AUTO_USE=true

# Homebrew fixes
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# load RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
# Extras, like shims and autocompletion
[[ -s $HOME/.rbenv/bin/rbenv ]] && eval "$(rbenv init -)"

# load ellipsis.sh
export PATH=$HOME/.ellipsis/bin:$PATH

# Set CHROME_BIN for karma
if [[ $CURRENT_OS == 'Linux' ]]; then
	export CHROME_BIN=google-chrome-stable
fi

# Set GOROOT-based install location
PATH=$PATH:/usr/local/opt/go/libexec/bin

# Set GOPATH
export GOPATH=$HOME/.go

# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

# Set Android Home Path for React Native
if [[ $CURRENT_OS == 'MAC OS' ]]; then
	export ANDROID_HOME=$HOME/Library/Android/sdk
else
	export ANDROID_HOME=$HOME/Android/sdk
fi

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# iterm2 Badges (use after sourcing iterm2 integration)
if [[ $CURRENT_OS == 'MAC OS' ]]; then
	iterm2_print_user_vars() {
		iterm2_set_user_var nodeVersion "$(node -v)"
		iterm2_set_user_var rubyVersion "$(ruby -v | cut -d ' ' -f1,2 | cut -d 'p' -f1)"
		iterm2_set_user_var AWS_REGION "$AWS_REGION"
		iterm2_set_user_var AWS_DEFAULT_REGION "$AWS_DEFAULT_REGION"
		iterm2_set_user_var gitUser $(git config --get user.email | cut -d "@" -f1)
	}
fi

# load project-control if available

load-project-control() {
    if [[ -f "project-control.sh" ]]; then
        source project-control.sh
    fi
}

add-zsh-hook chpwd load-project-control
