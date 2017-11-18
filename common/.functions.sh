# creates a directory and cds into it
function mkd() {
	mkdir -p "$@" && cd "$@"
}

# lists zombie processes
function zombie() {
	ps aux | awk '{if ($8=="Z") { print $2 }}'
}

#lists packages installed
function npmls() {
	npm ls --depth=0 "$@" 2>/dev/null
}

# run ls everytime you change dir
chpwd() {
	ls
}

# live reload script for git log
# source: https://gist.github.com/xero/3814469#file-gitlivelog-sh
livelog() {
	while true;
	do
	    clear
	    git log \
	    --graph \
	    --all \
	    --color \
	    --date=short \
	    -40 \
	    --pretty=format:"%C(yellow)%h%x20%C(white)%cd%C(green)%d%C(reset)%x20%s%x20%C(bold)(%an)%Creset" |
	    cat -
	    sleep 15
	done
}

pull-gnome-extensions() {
	dconf dump /org/gnome/shell/extensions/ > ./.gnome-extensions.conf
}

push-gnome-extensions() {
	if cat ./.gnome-extensions.conf > /dev/null; then
		dconf reset -f /org/gnome/shell/extensions/
		cat ./.gnome-extensions.conf | dconf load /org/gnome/shell/extensions/
	fi
}
