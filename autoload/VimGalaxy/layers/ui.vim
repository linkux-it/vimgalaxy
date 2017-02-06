scriptencoding utf-8

function! VimGalaxy#layers#ui#plugins() abort
  return [
        \ ['google/vim-searchindex'],
        \ ['Yggdroot/indentLine'],
        \ ['Konfekt/FastFold'],
        \ ['qpkorr/vim-bufkill'],
        \ ['airblade/vim-gitgutter'],
        \ ['vim-airline/vim-airline', { 'merged' : 0,  'loadconf' : 1}],
        \ ['vim-airline/vim-airline-themes', { 'merged' : 0}],
        \ ['mhinz/vim-startify', {'loadconf' : 1}],
        \ ['junegunn/goyo.vim', { 'on_cmd' : 'Goyo', 'loadconf' : 1}],
        \ ['junegunn/limelight.vim', { 'on_cmd' : 'Limelight'}],
        \ ['simnalamburt/vim-mundo', { 'on_cmd' : 'MundoToggle'}],
        \ ['scrooloose/nerdtree',{'on_cmd' : 'NERDTreeToggle', 'loadconf' : 1}],
        \ ['Xuyuanp/nerdtree-git-plugin'],
        \ ['Shougo/denite.nvim'],
        \ ['Shougo/neomru.vim'],
        \ ['nhooyr/neoman.vim'],
        \ ['vim-scripts/ZoomWin'],
        \ ['kennykaye/vim-relativity'],
        \ ['milkypostman/vim-togglelist'],
        \ ['majutsushi/tagbar'],
  \ ]
endfunction


function! VimGalaxy#layers#ui#config() abort
  let g:mundo_prefer_python3=1

  nnoremap <leader>bh :MundoToggle<CR>

  nmap <silent><leader>fb :NERDTreeToggle<CR>
  nmap <silent><leader>fbf :NERDTreeFind<CR>
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

  nnoremap <silent> [denite]T :Denite -auto-resize colorscheme<cr>
  " TODO: change denite fire
  nmap <leader> [denite]
  nnoremap [denite] <nop>
  nnoremap <silent> [denite]fr :Denite -auto-resize file_rec<cr>
  nnoremap <silent> [denite]g :Denite -auto-resize grep<cr>
  nnoremap <silent> [denite]fp :Denite -auto-resize file_filepoint<cr>
  nnoremap <silent> [denite]b :Denite -auto-resize buffer<cr>
  nnoremap <silent> [denite]h :Denite -auto-resize help<cr>
  nnoremap <silent> [denite]dr :Denite -auto-resize directory_rec<cr>
  nnoremap <silent> [denite]r :Denite -auto-resize file_mru<cr>
  nnoremap <silent> [denite]t :Denite -auto-resize filetype<cr>
  nnoremap <silent> [denite]l :Denite -auto-resize line<cr>
  nnoremap <silent> [denite]m :Denite -auto-resize menu<cr>
  nnoremap <silent> [denite]j :Denite -auto-resize jump_point<cr>
  nnoremap <silent> [denite]c :Denite -auto-resize command<cr>
  nnoremap <silent> [denite]o :Denite -auto-resize outline<cr>

  call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
  call denite#custom#source('file_mru', 'sorters', ['sorter_sublime'])
  call denite#custom#source('directory_rec', 'sorters', ['sorter_sublime'])
  call denite#custom#source('buffer', 'sorters', ['sorter_sublime'])
  call denite#custom#source('line', 'sorters', ['sorter_sublime'])
  call denite#custom#source('command', 'sorters', ['sorter_sublime'])
  call denite#custom#source('colorscheme', 'sorters', ['sorter_sublime'])
  call denite#custom#source('grep', 'sorters', ['sorter_sublime'])

  call denite#custom#var('grep', 'command', ['ag'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'final_opts', [])
  call denite#custom#var('grep', 'separator', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'default_opts',
       \ ['--nopager', '--nocolor', '--nogroup', '--column'])

  let g:toggle_list_no_mappings = 1
  nmap <script> <silent> <leader>wl :call ToggleLocationList()<CR>
  nmap <script> <silent> <leader>wq :call ToggleQuickfixList()<CR>
  noremap <leader>ct :TagbarToggle<CR>
endfunction
