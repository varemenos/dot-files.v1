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

if [[ $CURRENT_OS == 'Linux' ]]; then
	pull-gnome-extensions() {
		dconf dump /org/gnome/shell/extensions/ > ./.gnome-extensions.conf
	}

	push-gnome-extensions() {
		if cat ./.gnome-extensions.conf > /dev/null; then
			dconf reset -f /org/gnome/shell/extensions/
			cat ./.gnome-extensions.conf | dconf load /org/gnome/shell/extensions/
		fi
	}
fi

function setworkgit() {
	git config user.name "Adonis Kakoulidis"
	git config user.email "adonis.kakoulidis@nentgroup.com"
}
