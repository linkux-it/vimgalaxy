" VimGalaxy - Neovim distribution focused in software development.
" Maintainer:	 Luis Carlos Cruz Carballo <lcruzc@linkux-it.com>
" License:	MIT License

set nocompatible

" Setting up title options
set title
set titlestring=%{getpid().':'.getcwd()}
set titleold=?

" The encoding displayed in terminal/gui
set encoding=utf-8

" The encoding written to file.
set fileencoding=utf-8

" show partial command
set showcmd

" indent when moving to the next line while writing code
set autoindent
set smartindent

" show a visual line under the cursor's current line
set cursorline
set cursorcolumn
set colorcolumn=80

" show the matching part of the pair for [] {} and ()
set showmatch

" Set to auto read when a file is changed from the outside
set autoread

set history=10000
set incsearch
set hlsearch
set smarttab
set undolevels=1000
set list
set listchars=tab:│\ ,trail:•,extends:❯,precedes:❮
set showbreak=⇇
set t_Co=256
set background=dark
set lazyredraw
set hidden
set showmode

" faster redrawing
set ttyfast
set magic " Set magic on, for regex

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

" Undo cache settings
set undofile
set undodir=~/.cache/undovim
augroup vimrc
  autocmd BufWritePre /tmp/* setlocal noundofile
augroup END

" show wildmenu
set wildmenu

" Set ripgrep as default grep if exists
if executable("rg")
  set grepprg=rg\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m
endif

let base16colorspace=256

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Remember last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" This the default one
set foldmethod=syntax
set nofoldenable

set viewoptions=cursor,folds,slash,unix

" This to close preview when insert mode leaves
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

runtime macros/matchit.vim

" Remap window switch
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set shada='1000,f1,<500

filetype plugin on
filetype indent on

syntax on
syntax enable
