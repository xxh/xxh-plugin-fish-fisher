# [Fisher](https://github.com/jorgebucaran/fisher) plugin for [xxh-shell-fish](https://github.com/xxh/xxh-shell-fish).

## Fisher the package manager
Fisher is a package manager for the fish shell. It defines a common interface for package authors to build and distribute shell scripts in a portable way.

You can use it to extend your shell capabilities, change the look of your prompt and create repeatable configurations across different systems effortlessly.

Repositories on Github are supported by default without a prefix, however with a prefix you can install fish packages from any git repository, even private ones.

## Install
Install from xxh repository:

```bash
xxh +I xxh-plugin-fish-fisher
```

Connect and install the Fisher plugin:

```bash
xxh yourhost +s fish +if
```

## Install Fisher packages
Please see the upstream Fisher documentation section titled, "[Getting started](https://github.com/jorgebucaran/fisher#getting-started)" for information on installing, updating and even creating your own packages.

## Auto install of Fisher packages

This plugin will automatically run Fisher if it finds a `fishfile` that is not empty and the `local` directory has not yet been created by Fisher. By default the `fishfile` is located at `~/.xxh/config/fish/fishfile` and the `local` directory is located at `~/.xxh/config/fisher/local`. Note that these locations will be different if you [set the host-home-xdg with ](https://github.com/xxh/xxh/wiki#how-to-set-homeuser-as-home-on-host)`+hhx`. 
