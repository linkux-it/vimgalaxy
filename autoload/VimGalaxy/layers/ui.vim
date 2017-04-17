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
        \ ['Shougo/denite.nvim'],
        \ ['Shougo/neomru.vim'],
        \ ['nhooyr/neoman.vim'],
        \ ['vim-scripts/ZoomWin'],
        \ ['kennykaye/vim-relativity'],
        \ ['milkypostman/vim-togglelist'],
        \ ['majutsushi/tagbar'],
        \ ['hecal3/vim-leader-guide'],
  \ ]
endfunction

function! VimGalaxy#layers#ui#config() abort
  let g:mundo_prefer_python3 = 1

  let g:netrw_list_hide = '^.*\.o$,^.*\.obj$,^.*\.bak$,^.*\.exe$,^.*\.pyc$,^.DS_Store$,^.git/*,^node_modules/*'
  let g:netrw_hide=1              " hide hidden files
  let g:netrw_dirhistmax=100      " keep more history
  let g:netrw_altfile=1           " last edited file '#'
  let g:netrw_liststyle=3         " thin
  let g:netrw_alto=0              " open files on right
  let g:netrw_winsize=-28         " preview winsize
  let g:netrw_preview=1           " open previews vertically
  let g:netrw_use_errorwindow=0   " suppress error window
  let g:netrw_browse_split=4      " open files in previous window
  let g:netrw_banner=0


  nmap <silent><leader>fb :Lexplore <bar> :wincmd =<CR>
  nnoremap <leader>bh :MundoToggle<CR>
  nnoremap <silent> <leader>T :Denite -auto-resize colorscheme<cr>

  " file mappings
  nnoremap <silent> <leader>fl :Denite -auto-resize file_rec<cr>
  nnoremap <silent> <leader>fp :Denite -auto-resize file_filepoint<cr>
  nnoremap <silent> <leader>fr :Denite -auto-resize file_mru<cr>
  nnoremap <silent> <leader>ft :Denite -auto-resize filetype<cr>

  " file buffer
  nnoremap <silent> <leader>bl :Denite -auto-resize buffer<cr>

  " TODO: change denite fire
  nnoremap <silent> <leader>um :Denite -auto-resize menu<cr>
  nnoremap <silent> <leader>ug :Denite -auto-resize grep<cr>
  nnoremap <silent> <leader>uh :Denite -auto-resize help<cr>
  nnoremap <silent> <leader>udr :Denite -auto-resize directory_rec<cr>
  nnoremap <silent> <leader>ul :Denite -auto-resize line<cr>
  nnoremap <silent> <leader>uj :Denite -auto-resize jump_point<cr>
  nnoremap <silent> <leader>uc :Denite -auto-resize command<cr>
  nnoremap <silent> <leader>uo :Denite -auto-resize outline<cr>

  call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
  call denite#custom#source('file_mru', 'sorters', ['sorter_sublime', 'matcher_project_files'])
  call denite#custom#source('directory_rec', 'sorters', ['sorter_sublime'])
  call denite#custom#source('buffer', 'sorters', ['sorter_sublime'])
  call denite#custom#source('line', 'sorters', ['sorter_sublime'])
  call denite#custom#source('command', 'sorters', ['sorter_sublime'])
  call denite#custom#source('colorscheme', 'sorters', ['sorter_sublime'])
  call denite#custom#source('grep', 'sorters', ['sorter_sublime'])

  call denite#custom#var('file_rec', 'command',
        \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

  call denite#custom#var('grep', 'command', ['ag'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'final_opts', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'default_opts',
       \ ['-i', '--vimgrep'])

  let g:toggle_list_no_mappings = 1
  nmap <script> <silent> <leader>wl :call ToggleLocationList()<CR>
  nmap <script> <silent> <leader>wq :call ToggleQuickfixList()<CR>
  noremap <leader>ct :TagbarToggle<CR>

  " Define prefix dictionary
  let g:lmap =  {
        \'T': ['Denite -auto-resize colorscheme', 'Change Theme'],
        \' ': ['call feedkeys("\<Plug>easymotion-prefix")', 'Easy Motion'],
        \'!': ['call feedkeys(":!")', 'Shell input'],
        \'1': ['call feedkeys("\<Plug>AirlineSelectTab1")', 'Select Window 1'],
        \'2': ['call feedkeys("\<Plug>AirlineSelectTab2")', 'Select Window 2'],
        \'3': ['call feedkeys("\<Plug>AirlineSelectTab3")', 'Select Window 3'],
        \'4': ['call feedkeys("\<Plug>AirlineSelectTab4")', 'Select Window 4'],
        \'5': ['call feedkeys("\<Plug>AirlineSelectTab5")', 'Select Window 5'],
        \'6': ['call feedkeys("\<Plug>AirlineSelectTab6")', 'Select Window 6'],
        \'7': ['call feedkeys("\<Plug>AirlineSelectTab7")', 'Select Window 7'],
        \'8': ['call feedkeys("\<Plug>AirlineSelectTab8")', 'Select Window 8'],
        \'9': ['call feedkeys("\<Plug>AirlineSelectTab9")', 'Select Window 9'],
  \}

  let g:lmap.w =  { 'name': 'Window Menu' }
  let g:lmap.f =  { 'name': 'File Menu' }
  let g:lmap.b =  { 'name': 'Buffer Menu' }
  let g:lmap.t =  { 'name': 'Tab Menu' }
  let g:lmap.u =  { 'name': 'Denite Menu' }
  let g:lmap.d =  { 'name': 'Dein Menu' }
  let g:lmap._ =  { 'name': 'Comment Menu' }
  let g:lmap.a =  { 'name': 'Tabularize Menu' }

  call leaderGuide#register_prefix_descriptions('<Space>', 'g:lmap')

  nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
  vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
endfunction
