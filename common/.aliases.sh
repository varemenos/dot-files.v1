# Sudofix (fixes aliases not being able to run when using sudo)
alias sudo='sudo '

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then
	# GNU `ls`
	colorflag="--color"
else
	# OS X `ls`
	colorflag="-G"
fi

# Applications

alias grep='grep --color=auto'
alias gedit='subl'
alias g='git'
if ! [ -x "$(command -v bat)" ]; then
	echo 'Error: bat is not installed (https://github.com/sharkdp/bat#installation). falling back to cat'
else
	alias cat='bat'
fi

# Actions

if ! [ -x "$(command -v fzf)" ]; then
	echo 'Error: fzf is not installed (https://github.com/junegunn/fzf#installation).'
else
	alias preview="fzf --preview 'bat --color \"always\" {}'"
fi

alias build-source='./configure && make && sudo make install'
alias untar='tar -zxvf'
alias untarxz='tar -xJf'
alias androidSS='adb shell /system/bin/screencap -p /sdcard/screenshot.png && adb pull /sdcard/screenshot.png ~/desktop/screenshot.png'
if [[ $CURRENT_OS == 'Linux' ]]; then
	alias ls='ls -X -h --group-directories-first ${colorflag}'
	alias pbcopy='xclip -selection clipboard' # OSX compatibility
	alias pbpaste='xclip -selection clipboard -o' # OSX compatibility
else
	alias ls='gls -X -h --group-directories-first ${colorflag}'
	alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
fi

# Git
alias ga='g a'
alias gap='g ap'
alias gb='g b'
alias gbi='g bi'
alias gc='g c'
alias gca='g ca'
alias gcl='g cl'
alias gco='g co'
alias gd='g d'
alias gdw='g dw'
alias gdc='g dc'
alias gds='g ds'
alias gf='g f'
alias gg='g g'
alias gi='g i'
alias gl='g l'
alias glp='g lp'
alias glv='g lv'
alias gm='g m'
alias gmc='g mc'
alias gma='g ma'
alias gms='g ms'
alias gmv='g mv'
alias gp='g p'
alias gpl='g pl'
alias gr='g r'
alias grb='g rb'
alias grbc='g rbc'
alias grba='g rba'
alias grbs='g rbs'
alias grm='g rm'
alias gs='g s'
alias gst='g st'
alias gsh='g sh'
alias gt='g t'
alias gws='g ws'
alias gw='g w'
