# load project-control if available

load-project-control() {
    if [[ -f "project-control.sh" ]]; then
        source project-control.sh
    fi
}

autoload -U add-zsh-hook
add-zsh-hook chpwd load-project-control
load-project-control
