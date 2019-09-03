# creates a directory and cds into it
function mkd() {
	mkdir -p "$@" && cd "$@"
}

# clones a directory and cds into it
function gcld() {
  git clone $1 && cd $(basename "$1" .git)
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

# `whodis 3000` prints listeners of port 3000
function whodis() {
	lsof -n -i:$@ | grep LISTEN
}

function setworkgit() {
	git config user.name "Adonis Kakoulidis"
	git config user.email "adonis.kakoulidis@vimla.se"
}
