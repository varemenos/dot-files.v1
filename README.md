# dotfiles

## About

my dotfiles, enjoy

> powered by [ellipsis](https://github.com/ellipsis/ellipsis) and [zplug](https://github.com/zplug/zplug)

## Installation

```
// !!you need to install stow, check your distro's package manager for instructions
curl -sL ellipsis.sh | PACKAGES='varemenos/files' sh && exec $SHELL
```

Additional/optional packages: [`varemenos/node`](https://github.com/varemenos/dot-node), [`varemenos/ruby`](https://github.com/varemenos/dot-ruby), ~[`varemenos/apps`](https://github.com/varemenos/dot-apps)~.

## Current non-automated steps

GNU Stow needs to be installed before the installation process begins, it's used by my ellipsis script to sync the dotfile packages.
[fzf](https://github.com/junegunn/fzf) have to be installed manually.

## License

the MIT license
