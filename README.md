# VimGalaxy
Is a neovim and vim 8 setup like spacemacs and based on spacevim

![Version 0.0.1](https://img.shields.io/badge/version-0.1.0--dev-yellow.svg?style=flat-square)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](LICENSE)
[![Doc](https://img.shields.io/badge/doc-%3Ah%VimGalaxy-orange.svg?style=flat-square)](doc/VimGalaxy.txt)

[![Throughput Graph](https://graphs.waffle.io/linkux-it/vimgalaxy/throughput.svg)](https://waffle.io/linkux-it/vimgalaxy/metrics/throughput)

# Fonts instalations

To install fonts do this https://github.com/ryanoasis/nerd-fonts#option-2-ad-hoc-curl-download
To enable fonts do this for OSX https://github.com/ryanoasis/nerd-fonts/issues/13#issuecomment-190252936

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
        - [lua support](#lua)
        - c/c++ support
        - go support
        - rust support
        - php support
        - perl support
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
    - [Git](#git)
    - [GraphQL](#graphql)
    - [Shell](#shell)
    - [Web](#web)
    - [Javascript](#javascript)
    - [Python](#python)
    - [Lua](#lua)
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
[vim-vimlint] | Lint for vim script
[vim-vimlparser] | VimL parser
[vim-scriptease] | Vim plugin for making Vim plugins
[vimtex] | A modern vim plugin for editing LaTeX files.
[vim-localvimrc] | This plugin searches for local vimrc files in the file system tree of the currently opened file.
[neotags.nvim] | A neovim plugin that generates and highlight ctags similar to easytags.
[vim-fetch] | Make Vim handle line and column numbers in file names with a minimum of fuss.
[PreserveNoEOL] | Preserve missing EOL at the end of text files. 
[vim-tmux-navigator] | Seamless navigation between tmux panes and vim splits
[hardmode] | The philosophy Hard Mode

##### UI

Name           | Description
-------------- | ----------------------
[vim-startify] | Vim Startify
[denite.nvim] | Dark powered asynchronous unite all interfaces for Neovim/Vim8
[vim-searchindex] | Display number of search matches & index of a current match
[indentLine] | A vim plugin to display the indention levels with thin vertical lines
[FastFold] | Speed up Vim by updating folds only when called-for.
[vim-bufkill] | In Vim, trying to unload, delete or wipe a buffer without closing the window or split
[vim-gitgutter] | A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
[vim-airline] | Lean & mean status/tabline for vim that's light as air
[vim-airline-themes] | A collection of themes for vim-airline
[goyo.vim] | Distraction-free writing in Vim
[limelight.vim] | All the world's indeed a stage and we are merely players
[vim-mundo] | Vim undo tree visualizer 
[neomru.vim] | MRU plugin includes unite.vim MRU sources
[neoman.vim] | A modern man page plugin for vim
[ZoomWin] | Zoom in/out of windows (toggle between one window and multi-window)
[vim-relativity] | Toggle relative line numbers with ease.
[vim-togglelist] | Functions to toggle the [Location List] and the [Quickfix List] windows.
[tagbar] | Vim plugin that displays tags in a window, ordered by scope
[stay] | vim-stay adds automated view session creation and restoration whenever editing a buffer, across Vim sessions and window life cycles
[vim-leader-guide] | is a vim keymap-display loosely inspired by emacs's guide-key.
[vim-sneak] | Jump to any location specified by two characters.
[vim-workspace] | VimWorkspace brings the IDE-like tabs into Vim
[vim-devicons] | VimDevIcons adds filetype glyphs (icons)

##### Autocomplete

Name           | Description
-------------- | ----------------------
[ultisnips] | The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips!
[vim-snippets] | Default snippets (Previously snipmate-snippets)
[neoinclude.vim] | Include completion framework for neocomplete/deoplete
[neco-syntax] | Syntax source for neocomplete/deoplete
[auto-pairs] | Vim plugin, insert or delete brackets, parens, quotes in pair
[deoplete.nvim] | Dark powered asynchronous completion framework for neovim

##### Checkers

Name           | Description
-------------- | ----------------------
[ale] | ALE (Asynchronous Lint Engine) is a plugin for providing linting in NeoVim and Vim 8 while you edit your text files.

##### Colorscheme

Name           | Description
-------------- | ----------------------
[base16-vim] | Base16 for Vim
[oceanic-next] | Oceanic Next theme for neovim
[colour-schemes] | Colour schemes for a variety of editors created by Dayle Rees. 
[dracula] | A dark theme for Vim
[nordisk] | A calm, fairly low contrast, dark color scheme
[iceberg] | Iceberg is a dark blue color scheme for Vim. It brings a cool-headed perspective for your happy coding!
[vim-monokai] | Monokai color scheme for Vim converted from Textmate theme
[onedark.vim] | A dark Vim/Neovim color scheme for the GUI and 16/256/true-color terminals
[Spacegray.vim] | Spacegray is a colorscheme for Vim loosely modeled after the spacegray theme for Xcode.
[spacemacs-theme.vim] | A theme modelled after nashamri/spacemacs-theme, for Vim and iTerm.
[vim-material-theme] | Material theme for vim

##### Edit

Name           | Description
-------------- | ----------------------
[vim-surround] | Quoting/parenthesizing made simple 
[vim-unimpaired] | Pairs of handy bracket mappings 
[vim-endwise] | Wisely add "end" in ruby, endfunction/endif/more in vim script, etc
[vim-obsession] | Continuously updated session files
[vim-abolish] | Easily search for, substitute, and abbreviate multiple variants of a word
[vim-repeat] | Enable repeating supported plugin maps with "."
[tcomment_vim] | An extensible & universal comment vim-plugin that also handles embedded filetypes
[searchtasks.vim] | Plugin to search the labels often used as TODO, FIXME and XXX.
[vim-multiple-cursors] | True Sublime Text style multiple selections for Vim
[vim-asterisk] | *-Improved
[far.vim] | Find And Replace Vim plugin
[NrrwRgn] | A Narrow Region Plugin for vim (like Emacs Narrow Region)
[vim-expand-region] | Vim plugin that allows you to visually select increasingly larger regions of text using the same key combination.
[tabular] | Vim script for text filtering and alignment
[emmet-vim] | emmet for vim
[editorconfig-vim] | EditorConfig plugin for Vim
[vim-sort-motion] | This plugin provides the ability to sort in Vim using text objects and motions.

##### Git

Name           | Description
-------------- | ----------------------
[agit.vim] | A powerful Git log viewer
[gv.vim] | A git commit browser
[gina.vim] | Alpha: Git manipulation plugin for Neovim/Vim8 (new version of vim-gita)
[vim-fugitive] | a Git wrapper so awesome, it should be illegal 
[gitv] | gitk for Vim.

##### GraphQL

Name           | Description
-------------- | ----------------------
[vim-graphql] | A Vim plugin that provides GraphQL file detection and syntax highlighting.

##### Shell

Name           | Description
-------------- | ----------------------
[deol.nvim] | Dark powered shell interface for NeoVim.

##### Web

Name           | Description
-------------- | ----------------------
[vim-less] | vim syntax for LESS (dynamic CSS)
[scss-syntax.vim] | Vim syntax file for scss (Sassy CSS)
[vim-css3-syntax] | CSS3 syntax (and syntax defined in some foreign specifications) support for Vim's built-in syntax/css.vim
[vim-css-color] | Preview colours in source code while editing 
[html5.vim] | HTML5 omnicomplete and syntax
[vim-stylus] | Syntax Highlighting for Stylus
[vim-pug] | Vim Pug (formerly Jade) template engine syntax highlighting and indention
[mustache.vim] | Vim mode for mustache and handlebars (Deprecated)
[typescript-vim] | Typescript syntax files for Vim
[vim-json] | Syntax highlighting for JSON in Vim
[vim-jsx] | React JSX syntax highlighting and indenting for vim.
[vim-markdown] | Markdown Vim Mode
[MatchTag] | Vim's MatchParen for HTML tags 

##### Javascript

Name           | Description
-------------- | ----------------------
[vim-javascript] | Vastly improved Javascript indentation and syntax support in Vim.
[vim-node.js] | File type detect plugin for vim which detects node.js shebang
[deoplete-ternjs] | deoplete.nvim source for javascript
[javascript-libraries-syntax.vim] | Syntax for JavaScript libraries

##### Python

Name           | Description
-------------- | ----------------------
[deoplete-jedi] | deoplete.nvim source for Python
[vim-virtualenv] | Vim plugin for working with python virtualenvs

##### Lua

Name           | Description
-------------- | ----------------------
[vim-lua] | Improved Lua 5.3 syntax and indentation support for Vim
[lua-support] | Edit Lua scripts in Vim/gVim. Insert code snippets, run, compile, and check the code and look up help.


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
[denite.nvim]: https://github.com/Shougo/denite.nvim
[neomru.vim]: https://github.com/Shougo/neomru.vim
[neoman.vim]: https://github.com/nhooyr/neoman.vim
[ZoomWin]: https://github.com/vim-scripts/ZoomWin
[vim-relativity]: https://github.com/kennykaye/vim-relativity
[vim-togglelist]: https://github.com/milkypostman/vim-togglelist
[tagbar]: https://github.com/majutsushi/tagbar
[stay]: https://github.com/kopischke/vim-stay
[vim-leader-guide]: https://github.com/hecal3/vim-leader-guide
[vim-vimlint]: https://github.com/syngan/vim-vimlint
[vim-vimlparser]: https://github.com/ynkdir/vim-vimlparser
[vim-scriptease]: https://github.com/tpope/vim-scriptease
[vimtex]: https://github.com/lervag/vimtex
[vim-localvimrc]: https://github.com/embear/vim-localvimrc
[neotags.nvim]: https://github.com/c0r73x/neotags.nvim
[vim-fetch]: https://github.com/kopischke/vim-fetch
[PreserveNoEOL]: https://github.com/vim-scripts/PreserveNoEOL
[vim-tmux-navigator]: https://github.com/christoomey/vim-tmux-navigator
[ultisnips]: https://github.com/SirVer/ultisnips
[vim-snippets]: https://github.com/honza/vim-snippets
[neoinclude.vim]: https://github.com/Shougo/neoinclude.vim
[neco-syntax]: https://github.com/Shougo/neco-syntax
[auto-pairs]: https://github.com/jiangmiao/auto-pairs
[deoplete.nvim]: https://github.com/Shougo/deoplete.nvim
[ale]: https://github.com/w0rp/ale
[base16-vim]: https://github.com/chriskempson/base16-vim
[oceanic-next]: https://github.com/mhartington/oceanic-next
[colour-schemes]: https://github.com/daylerees/colour-schemes
[dracula]: https://github.com/dracula/vim
[nordisk]: https://github.com/arcticicestudio/nord-vim
[iceberg]: https://github.com/cocopon/iceberg.vim
[vim-monokai]: https://github.com/sickill/vim-monokai
[vim-surround]: https://github.com/tpope/vim-surround
[vim-unimpaired]: https://github.com/tpope/vim-unimpaired
[vim-endwise]: https://github.com/tpope/vim-endwise
[vim-obsession]: https://github.com/tpope/vim-obsession
[vim-abolish]: https://github.com/tpope/vim-abolish
[vim-repeat]: https://github.com/tpope/vim-repeat
[tcomment_vim]: https://github.com/tomtom/tcomment_vim
[searchtasks.vim]: https://github.com/gilsondev/searchtasks.vim
[vim-multiple-cursors]: https://github.com/terryma/vim-multiple-cursors
[incsearch.vim]: https://github.com/haya14busa/incsearch.vim
[vim-asterisk]: https://github.com/haya14busa/vim-asterisk
[far.vim]: https://github.com/brooth/far.vim
[NrrwRgn]: https://github.com/chrisbra/NrrwRgn
[vim-expand-region]: https://github.com/terryma/vim-expand-region
[tabular]: https://github.com/godlygeek/tabular
[emmet-vim]: https://github.com/mattn/emmet-vim
[editorconfig-vim]: https://github.com/editorconfig/editorconfig-vim
[vim-graphql]: https://github.com/jparise/vim-graphql
[deol.nvim]: https://github.com/Shougo/deol.nvim
[agit.vim]: https://github.com/cohama/agit.vim
[gv.vim]: https://github.com/junegunn/gv.vim
[gina.vim]: https://github.com/lambdalisue/gina.vim
[vim-fugitive]: https://github.com/tpope/vim-fugitive
[gitv]: https://github.com/gregsexton/gitv
[vim-less]: https://github.com/groenewege/vim-less
[scss-syntax.vim]: https://github.com/cakebaker/scss-syntax.vim
[vim-css3-syntax]: https://github.com/hail2u/vim-css3-syntax
[vim-css-color]: https://github.com/ap/vim-css-color
[html5.vim]: https://github.com/othree/html5.vim
[vim-stylus]: https://github.com/wavded/vim-stylus
[vim-pug]: https://github.com/digitaltoad/vim-pug
[mustache.vim]: https://github.com/juvenn/mustache.vim
[typescript-vim]: https://github.com/leafgarland/typescript-vim
[vim-json]: https://github.com/leshill/vim-json
[vim-jsx]: https://github.com/mxw/vim-jsx
[vim-markdown]: https://github.com/plasticboy/vim-markdown
[MatchTag]: https://github.com/gregsexton/MatchTag
[vim-javascript]: https://github.com/pangloss/vim-javascript
[vim-node.js]: https://github.com/mmalecki/vim-node.js
[deoplete-ternjs]: https://github.com/carlitux/deoplete-ternjs
[javascript-libraries-syntax.vim]: https://github.com/othree/javascript-libraries-syntax.vim
[deoplete-jedi]: https://github.com/zchee/deoplete-jedi
[vim-virtualenv]: https://github.com/jmcantrell/vim-virtualenv
[vim-sort-motion]: https://github.com/christoomey/vim-sort-motion
[hardmode]: https://github.com/wikitopian/hardmode
[vim-sneak]: https://github.com/justinmk/vim-sneak
[vim-workspace]: https://github.com/bagrat/vim-workspace
[vim-devicons]: https://github.com/ryanoasis/vim-devicons
[vim-material-theme]: https://github.com/jdkanani/vim-material-theme
[spacemacs-theme]: https://github.com/colepeters/spacemacs-theme.vim
[Spacegray.vim]: https://github.com/ajh17/Spacegray.vim
[onedark.vim]: https://github.com/joshdick/onedark.vim
[vim-lua]: https://github.com/tbastos/vim-lua
[lua-support]: https://github.com/WolfgangMehner/lua-support
