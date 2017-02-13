# VimGalaxy
Is a neovim and vim 8 setup like spacemacs and based on spacevim

![Version 0.0.1](https://img.shields.io/badge/version-0.1.0--dev-yellow.svg?style=flat-square)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![Doc](https://img.shields.io/badge/doc-%3Ah%VimGalaxy-orange.svg?style=flat-square)](doc/VimGalaxy.txt)

[![Throughput Graph](https://graphs.waffle.io/linkux-it/vimgalaxy/throughput.svg)](https://waffle.io/linkux-it/vimgalaxy/metrics/throughput)

### Table of Contents
- [Introduction](#introduction)
- [Install](#install)
    - [Linux/Mac](#linuxmac)
    - Windows support
- [File Structure](#file-structure)
- [Basics](#basic)
- Features
    - [Language specific mode](#language-specific-mode)
        - [javascript support](#javascript)
        - [python support](#python)
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
    - Be as small as possible
    - Be simple
- [Mappings](#mappings)
- Layers
    - [Core](#core)
    - [UI](#ui)
    - [Autocomplete](#autocomplete)
    - [Checkers](#checkers)
    - [Colorscheme](#colorscheme)
    - [Edit](#edit)
    - [Format](#format)
    - [Git](#git)
    - [GraphQL](#graphql)
    - [Shell](#shell)
    - [Web](#web)
    - [Javascript](#javascript)
    - [Python](#python)
- [Custom configuration](#custom-configuration)
- [Credits & Thanks](#credits--thanks)

## TODO:
* Create Denite menu like spacemacs - maybe another plugin or custom code

#### Introduction

[VimGalaxy](https://github.com/linkux-it/vimgalaxy) is a Modular configuration for developers, a bundle of custom settings and plugins 
for Vim/Neovim, here we call them layers, each layer has different plugins and config, users just need to select the layers they need. 
It got inspired by [spacemacs] and [SpaceVim](https://spacevim.org).

If you encounter any bugs or have feature requests, just open an issue report on Github.

For learning about Vim in general, read [vim-galore](https://github.com/mhinz/vim-galore).

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
  - [general.vim](./config/general.vim) - General configuration
  - [init.vim](./config/init.vim) - `runtimepath` initialization
  - [main.vim](./config/main.vim) - Main config
  - [neovim.vim](./config/neovim.vim) - Neovim specific setup
- [init.vim](./init.vim) - Sources `config/main.vim`
- [vimrc](./vimrc) - Sources `config/main.vim`

#### Basics
Vim 8 has not full support unless plugins has support for it.

<leader> is set to <space> all commands will fall into that same as [spacemacs].

##### Neovim centric - Dark powered mode of SpaceVim.

By default, SpaceVim use these dark powered plugins:

1. [deoplete.nvim] - Dark powered asynchronous completion framework for neovim
2. [dein.vim] - Dark powered Vim/Neovim plugin manager
3. [denite.nvim] - Dark powered asynchronous unite all interfaces for Neovim/Vim8

TODO:

1. [defx.nvim](https://github.com/Shougo/defx.nvim) - Dark powered file explorer
2. [deoppet.nvim](https://github.com/Shougo/deoppet.nvim) - Dark powered snippet plugin

#### Layers

##### Core

Name           | Description
-------------- | ----------------------
[dein.vim] | Dark powered Vim/Neovim plugin manager
['vim-vimlint'] | 
['vim-vimlparser'] | 
['vim-scriptease'] | 
['vimtex'] | 
['vim-localvimrc'] | 
['neotags.nvim'] | 
['vim-fetch'] | 
['PreserveNoEOL'] | 
['vim-tmux-navigator'] | 

##### UI

Name           | Description
-------------- | ----------------------
[vim-startify] | Vim Startify
[deoplete.nvim] | 
[denite.nvim] | 
[vim-searchindex] | 
[indentLine] | 
[FastFold] | 
[vim-bufkill] | 
[vim-gitgutter] | 
[vim-airline] | 
[vim-airline-themes] | 
[vim-startify] | 
[goyo.vim] | 
[limelight.vim] | 
[vim-mundo] | 
[nerdtree] | 
[nerdtree-git-plugin] | 
[denite.nvim] | 
[neomru.vim] | 
[neoman.vim] | 
[ZoomWin] | 
[vim-relativity] | 
[vim-togglelist] | 
[tagbar] | 
[vim-leader-guide] |

##### Autocomplete

Name           | Description
-------------- | ----------------------
['ultisnips'] | 
['vim-snippets'] | 
['neoinclude.vim'] | 
['neco-syntax'] | 
['auto-pairs'] | 
['deoplete.nvim'] | 

##### Checkers

Name           | Description
-------------- | ----------------------
['neomake'] | 

##### Colorscheme

Name           | Description
-------------- | ----------------------
['base16-vim'] | 
['oceanic-next'] | 
['colour-schemes'] | 
['vim'] | 
['nordisk'] | 
['vim-monokai'] | 

##### Edit

Name           | Description
-------------- | ----------------------
['vim-surround'] | 
['vim-unimpaired'] | 
['vim-endwise'] | 
['vim-obsession'] | 
['vim-abolish'] | 
['vim-repeat'] | 
['tcomment_vim'] | 
['searchtasks.vim'] | 
['incsearch-fuzzy.vim'] | 
['incsearch-easymotion.vim'] | 
['vim-multiple-cursors'] | 
['incsearch.vim'] | 
['vim-asterisk'] | 
['far.vim'] | 
['NrrwRgn'] | 
['vim-expand-region'] | 
['tabular'] | 
['emmet-vim'] | 
['vim-easymotion'] | 
['editorconfig-vim'] | 

##### Format

Name           | Description
-------------- | ----------------------
['neoformat'] | 

##### Git

Name           | Description
-------------- | ----------------------
['agit.vim'] | 
['gv.vim'] | 
['gina.vim'] | 
['vim-fugitive'] | 
['gitv'] | 

##### GraphQL

Name           | Description
-------------- | ----------------------
['vim-graphql'] | 

##### Shell

Name           | Description
-------------- | ----------------------
['deol.nvim'] | 

##### Web

Name           | Description
-------------- | ----------------------
['vim-less'] | 
['scss-syntax.vim'] | 
['vim-css3-syntax'] | 
['vim-css-color'] | 
['html5.vim'] | 
['vim-stylus'] | 
['vim-jade'] | 
['mustache.vim'] | 
['typescript-vim'] | 
['vim-json'] | 
['vim-json'] | 
['vim-jsx'] | 
['vim-markdown'] | 
['MatchTag'] | 

##### Javascript

Name           | Description
-------------- | ----------------------
['vim-javascript'] | 
['vim-node.js'] | 
['deoplete-ternjs'] | 
['vim-jsbeautify'] | 
['javascript-libraries-syntax.vim'] | 

##### Python

Name           | Description
-------------- | ----------------------
['deoplete-jedi'] | 
['vim-virtualenv'] | 

#### Credits & Thanks
- [![GitHub contributors](https://img.shields.io/github/contributors/linkux-it/VimGalaxy.svg)](https://github.com/linkux-it/VimGalaxy/graphs/contributors)
- [vimdoc](https://github.com/google/vimdoc) generate doc file for VimGalaxy
- [SpaceVim](https://github.com/SpaceVim/SpaceVim)


<!-- plublic links -->
[spacemacs]: https://github.com/syl20bnr/spacemacs
[dein.vim]: https://github.com/Shougo/dein.vim
[vim-startify]: https://github.com/mhinz/vim-startify
[deoplete.nvim]: https://github.com/Shougo/deoplete.nvim
[denite.nvim]: https://github.com/Shougo/denite.nvim
[vim-searchindex]: https://github.com/google/vim-searchindex
[indentLine]: https://github.com/Yggdroot/indentLine
[FastFold]: https://github.com/Konfekt/FastFold
[vim-bufkill]: https://github.com/qpkorr/vim-bufkill
[vim-gitgutter]: https://github.com/airblade/vim-gitgutter
[vim-airline]: https://github.com/vim-airline/vim-airline
[vim-airline-themes]: https://github.com/vim-airline/vim-airline-themes
[vim-startify]: https://github.com/mhinz/vim-startify
[goyo.vim]: https://github.com/junegunn/goyo.vim
[limelight.vim]: https://github.com/junegunn/limelight.vim
[vim-mundo]: https://github.com/simnalamburt/vim-mundo
[nerdtree]: https://github.com/scrooloose/nerdtree
[nerdtree-git-plugin]: https://github.com/Xuyuanp/nerdtree-git-plugin
[denite.nvim]: https://github.com/Shougo/denite.nvim
[neomru.vim]: https://github.com/Shougo/neomru.vim
[neoman.vim]: https://github.com/nhooyr/neoman.vim
[ZoomWin]: https://github.com/vim-scripts/ZoomWin
[vim-relativity]: https://github.com/kennykaye/vim-relativity
[vim-togglelist]: https://github.com/milkypostman/vim-togglelist
[tagbar]: https://github.com/majutsushi/tagbar
[vim-leader-guide]: https://github.com/hecal3/vim-leader-guide
['vim-vimlint']: https://github.com/syngan/vim-vimlint
['vim-vimlparser']: https://github.com/ynkdir/vim-vimlparser
['vim-scriptease']: https://github.com/tpope/vim-scriptease
['vimtex']: https://github.com/lervag/vimtex
['vim-localvimrc']: https://github.com/embear/vim-localvimrc
['neotags.nvim']: https://github.com/c0r73x/neotags.nvim
['vim-fetch']: https://github.com/kopischke/vim-fetch
['PreserveNoEOL']: https://github.com/vim-scripts/PreserveNoEOL
['vim-tmux-navigator']: https://github.com/christoomey/vim-tmux-navigator
['ultisnips']: https://github.com/SirVer/ultisnips
['vim-snippets']: https://github.com/honza/vim-snippets
['neoinclude.vim']: https://github.com/Shougo/neoinclude.vim
['neco-syntax']: https://github.com/Shougo/neco-syntax
['auto-pairs']: https://github.com/jiangmiao/auto-pairs
['deoplete.nvim']: https://github.com/Shougo/deoplete.nvim
['neomake']: https://github.com/neomake/neomake
['base16-vim']: https://github.com/chriskempson/base16-vim
['oceanic-next']: https://github.com/mhartington/oceanic-next
['colour-schemes']: https://github.com/daylerees/colour-schemes
['vim']: https://github.com/dracula/vim
['nordisk']: https://github.com/kamwitsta/nordisk
['vim-monokai']: https://github.com/sickill/vim-monokai
['vim-surround']: https://github.com/tpope/vim-surround
['vim-unimpaired']: https://github.com/tpope/vim-unimpaired
['vim-endwise']: https://github.com/tpope/vim-endwise
['vim-obsession']: https://github.com/tpope/vim-obsession
['vim-abolish']: https://github.com/tpope/vim-abolish
['vim-repeat']: https://github.com/tpope/vim-repeat
['tcomment_vim']: https://github.com/tomtom/tcomment_vim
['searchtasks.vim']: https://github.com/gilsondev/searchtasks.vim
['incsearch-fuzzy.vim']: https://github.com/haya14busa/incsearch-fuzzy.vim
['incsearch-easymotion.vim']: https://github.com/haya14busa/incsearch-easymotion.vim
['vim-multiple-cursors']: https://github.com/terryma/vim-multiple-cursors
['incsearch.vim']: https://github.com/haya14busa/incsearch.vim
['vim-asterisk']: https://github.com/haya14busa/vim-asterisk
['far.vim']: https://github.com/brooth/far.vim
['NrrwRgn']: https://github.com/chrisbra/NrrwRgn
['vim-expand-region']: https://github.com/terryma/vim-expand-region
['tabular']: https://github.com/godlygeek/tabular
['emmet-vim']: https://github.com/mattn/emmet-vim
['vim-easymotion']: https://github.com/easymotion/vim-easymotion
['editorconfig-vim']: https://github.com/editorconfig/editorconfig-vim
['neoformat']: https://github.com/sbdchd/neoformat
['vim-graphql']: https://github.com/jparise/vim-graphql
['deol.nvim']: https://github.com/Shougo/deol.nvim
['agit.vim']: https://github.com/cohama/agit.vim
['gv.vim']: https://github.com/junegunn/gv.vim
['gina.vim']: https://github.com/lambdalisue/gina.vim
['vim-fugitive']: https://github.com/tpope/vim-fugitive
['gitv']: https://github.com/gregsexton/gitv
['vim-less']: https://github.com/groenewege/vim-less
['scss-syntax.vim']: https://github.com/cakebaker/scss-syntax.vim
['vim-css3-syntax']: https://github.com/hail2u/vim-css3-syntax
['vim-css-color']: https://github.com/ap/vim-css-color
['html5.vim']: https://github.com/othree/html5.vim
['vim-stylus']: https://github.com/wavded/vim-stylus
['vim-jade']: https://github.com/digitaltoad/vim-jade
['mustache.vim']: https://github.com/juvenn/mustache.vim
['typescript-vim']: https://github.com/leafgarland/typescript-vim
['vim-json']: https://github.com/leshill/vim-json
['vim-jsx']: https://github.com/mxw/vim-jsx
['vim-markdown']: https://github.com/plasticboy/vim-markdown
['MatchTag']: https://github.com/gregsexton/MatchTag
['vim-javascript']: https://github.com/pangloss/vim-javascript
['vim-node.js']: https://github.com/mmalecki/vim-node.js
['deoplete-ternjs']: https://github.com/carlitux/deoplete-ternjs
['vim-jsbeautify']: https://github.com/maksimr/vim-jsbeautify
['javascript-libraries-syntax.vim']: https://github.com/othree/javascript-libraries-syntax.vim
['deoplete-jedi']: https://github.com/zchee/deoplete-jedi
['vim-virtualenv']: https://github.com/jmcantrell/vim-virtualenv
