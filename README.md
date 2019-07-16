# dotfiles

## About

my dotfiles, enjoy

> powered by [ellipsis](https://github.com/ellipsis/ellipsis) and [zplug](https://github.com/zplug/zplug)

## Requirements

You need to install these with your package manager before proceeding

* zsh
* stow

## Installation

```bash
# !!you need to install stow, check your distro's package manager for instructions
curl -sL ellipsis.sh | PACKAGES='varemenos/files' sh && exec $SHELL
```

Additional/optional packages: [`varemenos/node`](https://github.com/varemenos/dot-node), [`varemenos/ruby`](https://github.com/varemenos/dot-ruby), ~[`varemenos/apps`](https://github.com/varemenos/dot-apps)~.



## Example installation process

```bash
sudo apt-get install zsh stow
curl -sL ellipsis.sh | PACKAGES='varemenos/files' sh && exec $SHELL
chsh -s $(which zsh)
zsh # (or close the terminal and open another window)
```

## License

the MIT license
