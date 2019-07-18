# Sudofix (fixes aliases not being able to run when using sudo)
alias sudo='sudo '

# Applications
alias grep='grep --color=auto'
alias g='git'
alias weather="curl wttr.in/Stockholm"

if [ -x "$(command -v bat)" ]; then
	alias cat='bat'
else
	echo 'Warning! bat is not installed, please install it'
fi

if [ -x "$(command -v fzf)" ]; then
	alias preview="fzf --preview 'bat --color \"always\" {}'"
else
	echo 'Warning! fzf is not installed, please install it'
fi

if [ -x "$(command -v exa)" ]; then
	alias ls='exa -hg --icons --group-directories-first --color=auto'
else
	echo 'Warning! exa is not installed, please install it'
	# Detect which `ls` flavor is in use
	if ls --color > /dev/null 2>&1; then; colorflag="--color"; else; colorflag="-G" fi
	alias ls='ls -X -h --group-directories-first ${colorflag}'
fi

if [[ $CURRENT_OS == 'Linux' ]]; then
	alias pbcopy='xclip -selection clipboard' # MAC OS compatibility
	alias pbpaste='xclip -selection clipboard -o' # MAC OS compatibility
fi

if [[ $CURRENT_OS == 'MAC OS' ]]; then
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
