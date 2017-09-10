scriptencoding utf-8

function! VimGalaxy#default#SetOptions() abort
  " The encoding displayed in terminal/gui
  set encoding=utf-8

  " The encoding written to file.
  set fileencoding=utf-8

  " show partial command
  set showcmd

  " indent when moving to the next line while writing code
  set autoindent
  " set smartindent
  " set cindent

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

  " show wildmenu
  set wildmenu

  " Set ag as default grep
  set grepprg=ag\ --vimgrep\ $*
  set grepformat=%f:%l:%c:%m

  " enable all Python syntax highlighting features
  let python_highlight_all = 1

  let base16colorspace=256

  cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

  " Remember last position
  if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif

  " This the default one
  set foldmethod=syntax
  set foldclose=all
  set foldcolumn=1
  set nofoldenable

  autocmd BufNewFile,BufReadPost *.js setl foldmethod=syntax
  autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent
  autocmd BufNewFile,BufReadPost *.py setl foldmethod=indent

  set viewoptions=cursor,folds,slash,unix

  " This to close preview when insert mode leaves
  autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

  runtime macros/matchit.vim

  " Open quickfix when set
  " autocmd QuickFixCmdPost [^l]* cwindow
  " autocmd QuickFixCmdPost l*    lwindow

  " Next three lines are to enable C-Space to autocomplete, omnicomplete
  inoremap <C-Space> <C-x><C-o>
  inoremap <C-@> <c-x><c-o>

  if exists('$TMUX')
    " Easy navigation same as tmux, enjoy it!
    let g:tmux_navigator_no_mappings = 1

    nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
    nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
    nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
    nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
    nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>
    
    let g:tmux_navigator_save_on_switch = 1
  else
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l
  endif

  if !has('nvim')
    set term=screen-256color
    set shada='1000,f1,<500
  endif

  if &compatible
    set nocompatible
  endif
endfunction

function! VimGalaxy#default#SetPlugins() abort
  call add(g:vimgalaxy_plugin_groups, 'core')
  call add(g:vimgalaxy_plugin_groups, 'ui')
  call add(g:vimgalaxy_plugin_groups, 'edit')
  call add(g:vimgalaxy_plugin_groups, 'colorscheme')
  call add(g:vimgalaxy_plugin_groups, 'git')
  call add(g:vimgalaxy_plugin_groups, 'checkers')
  call add(g:vimgalaxy_plugin_groups, 'autocomplete')
  call add(g:vimgalaxy_plugin_groups, 'shell')
  call add(g:vimgalaxy_plugin_groups, 'format')
  call add(g:vimgalaxy_plugin_groups, 'web')
  call add(g:vimgalaxy_plugin_groups, 'graphql')

  call add(g:vimgalaxy_plugin_groups, 'lang#javascript')
  call add(g:vimgalaxy_plugin_groups, 'lang#python')
endfunction


function! VimGalaxy#default#SetMappings() abort
  " With a map leader it's possible to do extra key combinations
  let mapleader = " "
  let g:mapleader = " "

  " tab navigation
  nnoremap <leader>th  :tabfirst<CR>
  nnoremap <leader>tj  :tabnext<CR>
  nnoremap <leader>tk  :tabprev<CR>
  nnoremap <leader>tl  :tablast<CR>
  nnoremap <leader>tn  :tabnew<CR>
  nnoremap <leader>tt  :tabedit<Space>
  nnoremap <leader>tm  :tabm<Space>
  nnoremap <leader>td  :tabclose<CR>

  " buffer navigation
  nnoremap <leader>bh  :bfirst<CR>
  nnoremap <leader>bk  :bnext<CR>
  nnoremap <leader>bj  :bprev<CR>
  nnoremap <leader>bl  :blast<CR>
  nnoremap <leader>bn  :enew<CR>
  nnoremap <leader>bm  :bm<Space>
  nnoremap <leader>bd  :BD<CR>
  nnoremap <leader>bun :BUN<CR>
  nnoremap <leader>bw  :BW<CR>
  nnoremap <leader>ba  :BA<CR>

  " Search maps
  nnoremap <leader>svg :vimgrep
  nnoremap <leader>sg :grep

  " File maps
  nnoremap <leader>fs :w<CR>
  nnoremap <leader>fsa :wa<CR>
  nnoremap <leader>fo :e

  nnoremap <leader>du :call dein#update()<cr>
  nnoremap <leader>dc :call dein#check_update()<cr>
endfunction
