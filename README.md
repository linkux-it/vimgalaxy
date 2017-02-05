# VimGalaxy
Is a neovim and vim 8 setup like spacemacs and based on spacevim

![Version 0.1.0](https://img.shields.io/badge/version-0.1.0--dev-yellow.svg?style=flat-square)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![Doc](https://img.shields.io/badge/doc-%3Ah%VimGalaxy-orange.svg?style=flat-square)](doc/VimGalaxy.txt)

### Table of Contents
- [Introduction](#introduction)
- [Install](#install)
    - [Linux/Mac](#linuxmac)
    - Windows support
- [File Structure](#file-structure)
- [Basics](#basic)
- Features
    - [Language specific mode](#language-specific-mode)
        - [javascript support](#javascript-support)
        - [python support](#python-support)
        - c/c++ support
        - go support
        - rust support
        - php support
        - perl support
        - lua support
    - [Neovim centric - Dark powered mode](#neovim-centric---dark-powered-mode-of-spacevim)
    - [Modular configuration](#modular-configuration)
    - Lazy-load 90% of plugins with [dein.vim]
    - Robust, yet light weight
    - Extensive Neocomplete setup
    - Central location for tags
    - Lightweight simple status/tabline
    - Premium color-schemes
- [Custom configuration](#custom-configuration)
- [Credits & Thanks](#credits--thanks)

[VimGalaxy](https://github.com/linkux-it/vimgalaxy) is a Modular configuration for developers, a bundle of custom settings and plugins 
for Vim/Neovim, here we call them layers, each layer has different plugins and config, users just need to select the layers they need. 
It got inspired by [spacemacs] and [SpaceVim](https://spacevim.org).

If is focused on:
* Be as small as possible
* Be simple

If you encounter any bugs or have feature requests, just open an issue report on Github.

For learning about Vim in general, read [vim-galore](https://github.com/mhinz/vim-galore).
[![Throughput Graph](https://graphs.waffle.io/linkux-it/vimgalaxy/throughput.svg)](https://waffle.io/linkux-it/vimgalaxy/metrics/throughput)

#### Install

##### Linux/Mac

```sh
curl -sLf https://raw.githubusercontent.com/linkux-it/vimgalaxy/master/install.sh | bash
```

```sh
curl -sLf https://raw.githubusercontent.com/linkux-it/vimgalaxy/master/install.sh | bash -s -- install vim
```

```sh
curl -sLf https://raw.githubusercontent.com/linkux-it/vimgalaxy/master/install.sh | bash -s -- install neovim
```

Installation of neovim/vim with python support:
> [neovim installation](https://github.com/neovim/neovim/wiki/Installing-Neovim)

> [Building Vim from source](https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source)


#### File Structure
- [config](./config)/ - Configuration
  - [plugins](./config/plugins)/ - Plugin configurations
  - [mappings.vim](./config/mappings.vim) - Key mappings
  - [autocmds.vim](./config/autocmds.vim) - autocmd group
  - [general.vim](./config/general.vim) - General configuration
  - [init.vim](./config/init.vim) - `runtimepath` initialization
  - [neovim.vim](./config/neovim.vim) - Neovim specific setup
  - [plugins.vim](./config/plugins.vim) - Plugin bundles
  - [commands.vim](./config/commands.vim) - Commands
  - [functions.vim](./config/functions.vim) - Functions
  - [main.vim](./config/main.vim) - Main config
- [ftplugin](./ftplugin)/ - Language specific custom settings
- [filetype.vim](./filetype.vim) - Custom filetype detection
- [init.vim](./init.vim) - Sources `config/main.vim`
- [vimrc](./vimrc) - Sources `config/main.vim`

#### Basics
<leader> is set to <space> all commands will fall into that same as [spacemacs].

###### javascript support

###### python support

##### Neovim centric - Dark powered mode of SpaceVim.

By default, SpaceVim use these dark powered plugins:

1. [deoplete.nvim](https://github.com/Shougo/deoplete.nvim) - Dark powered asynchronous completion framework for neovim
2. [dein.vim](https://github.com/Shougo/dein.vim) - Dark powered Vim/Neovim plugin manager

TODO:

1. [defx.nvim](https://github.com/Shougo/defx.nvim) - Dark powered file explorer
2. [deoppet.nvim](https://github.com/Shougo/deoppet.nvim) - Dark powered snippet plugin
3. [denite.nvim](https://github.com/Shougo/denite.nvim) - Dark powered asynchronous unite all interfaces for Neovim/Vim8

#### Non Lazy-Loaded Plugins

Name           | Description
-------------- | ----------------------
[dein.vim] | Dark powered Vim/Neovim plugin manager
[vim-startify] | Vim Startify

#### Credits & Thanks
- [![GitHub contributors](https://img.shields.io/github/contributors/linkux-it/VimGalaxy.svg)](https://github.com/linkux-it/VimGalaxy/graphs/contributors)
- [vimdoc](https://github.com/google/vimdoc) generate doc file for VimGalaxy
- [SpaceVim](https://github.com/SpaceVim/SpaceVim)


<!-- plublic links -->
[spacemacs]: https://github.com/syl20bnr/spacemacs
[dein.vim]: https://github.com/Shougo/dein.vim
[vim-startify]: https://github.com/mhinz/vim-startify
