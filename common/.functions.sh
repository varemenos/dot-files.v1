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

# source: https://gist.github.com/Fuxy22/da4b7ca3bcb0bfea2c582964eafeb4ed
# remove specified host from /etc/hosts
function removehost() {
    if [[ "$1" ]]
    then
        HOSTNAME=$1

        if [ -n "$(grep $HOSTNAME /etc/hosts)" ]
        then
            echo "$HOSTNAME Found in your /etc/hosts, Removing now...";
            sudo sed -i".bak" "/$HOSTNAME/d" /etc/hosts
        else
            echo "$HOSTNAME was not found in your /etc/hosts";
        fi
    else
        echo "Error: missing required parameters."
        echo "Usage: "
        echo "  removehost domain"
    fi
}

# add new ip host pair to /etc/hosts
function addhost() {
    if [[ "$1" && "$2" ]]
    then
        IP=$1
        HOSTNAME=$2

        if [ -n "$(grep $HOSTNAME /etc/hosts)" ]
            then
                echo "$HOSTNAME already exists:";
                echo $(grep $HOSTNAME /etc/hosts);
            else
                echo "Adding $HOSTNAME to your /etc/hosts";
                printf "%s\t%s\n" "$IP" "$HOSTNAME" | sudo tee -a /etc/hosts > /dev/null;

                if [ -n "$(grep $HOSTNAME /etc/hosts)" ]
                    then
                        echo "$HOSTNAME was added succesfully:";
                        echo $(grep $HOSTNAME /etc/hosts);
                    else
                        echo "Failed to Add $HOSTNAME, Try again!";
                fi
        fi
    else
        echo "Error: missing required parameters."
        echo "Usage: "
        echo "  addhost ip domain"
    fi
}
