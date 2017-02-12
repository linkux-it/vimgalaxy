function! VimGalaxy#layers#edit#plugins() abort
  let plugins = [
        \ ['tpope/vim-surround'],
        \ ['tpope/vim-unimpaired'],
        \ ['tpope/vim-endwise'],
        \ ['tpope/vim-obsession'],
        \ ['tpope/vim-abolish'],
        \ ['tpope/vim-repeat'],
        \ ['tomtom/tcomment_vim'],
        \ ['gilsondev/searchtasks.vim'],
        \ ['haya14busa/incsearch-fuzzy.vim'],
        \ ['haya14busa/incsearch-easymotion.vim'],
        \ ['terryma/vim-multiple-cursors'],
        \ ['haya14busa/incsearch.vim'],
        \ ['haya14busa/vim-asterisk'],
        \ ['brooth/far.vim'],
        \ ['chrisbra/NrrwRgn'],
        \ ['terryma/vim-expand-region'],
        \ ['godlygeek/tabular', { 'on_cmd': 'Tabularize'}],
        \ ['mattn/emmet-vim', { 'on_cmd' : 'EmmetInstall', 'on_ft': ['htmldjango','jsx','swig','html','xml','xsl','xslt','xsd','css','sass','scss','less','mustache','handlebars','hbs'] }],
        \ ['easymotion/vim-easymotion'],
        \ ['editorconfig/editorconfig-vim', { 'on_cmd' : 'EditorConfigReload', 'on_i': 1}],
  \ ]
  return plugins
endfunction


function! VimGalaxy#layers#edit#config() abort
  let g:multi_cursor_next_key='<C-j>'
  let g:multi_cursor_prev_key='<C-k>'
  let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'
  let g:user_emmet_settings = {'html':{'quote_char': "'",},}

  "map <Leader><Leader>l <Plug>(easymotion-lineforward)
  "map <Leader><Leader>j <Plug>(easymotion-j)
  "map <Leader><Leader>k <Plug>(easymotion-k)
  "map <Leader><Leader>h <Plug>(easymotion-linebackward)

  let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
  let g:EasyMotion_smartcase = 1
  let g:EasyMotion_use_smartsign_us = 1 " US layout

  let g:EditorConfig_exclude_patterns = ['fugitive://.*']
  let g:EditorConfig_exclude_patterns = ['scp://.*']
  let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

  let g:incsearch#magic = '\v' " very magic
  let g:incsearch#magic = '\V' " very nomagic
  let g:incsearch#magic = '\m' " magic
  let g:incsearch#magic = '\M' " nomagic

  map / <Plug>(incsearch-easymotion-/)
  map ? <Plug>(incsearch-easymotion-?)
  map g/ <Plug>(incsearch-easymotion-stay)

  " incsearch.vim x fuzzy x vim-easymotion
  function! s:config_easyfuzzymotion(...) abort
    return extend(copy({
          \   'converters': [incsearch#config#fuzzy#converter()],
          \   'modules': [incsearch#config#easymotion#module()],
          \   'keymap': {"\<CR>": '<Over>(easymotion)'},
          \   'is_expr': 0,
          \   'is_stay': 1
          \ }), get(a:, 1, {}))
  endfunction

  noremap <silent><expr> <leader>/ incsearch#go(<SID>config_easyfuzzymotion())

  nmap <Leader>a& :Tabularize /&<CR>
  vmap <Leader>a& :Tabularize /&<CR>
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:<CR>
  vmap <Leader>a: :Tabularize /:<CR>
  nmap <Leader>a:: :Tabularize /:\zs<CR>
  vmap <Leader>a:: :Tabularize /:\zs<CR>
  nmap <Leader>a, :Tabularize /,<CR>
  vmap <Leader>a, :Tabularize /,<CR>
  nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
  vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

  let g:searchtasks_list=["TODO", "FIXME", "NOTE", "CHANGED", "TEST"]
  let g:far#source = 'agnvim'

  map *   <Plug>(incsearch-nohl)<Plug>(asterisk-*)
  map g*  <Plug>(incsearch-nohl)<Plug>(asterisk-g*)
  map #   <Plug>(incsearch-nohl)<Plug>(asterisk-#)
  map g#  <Plug>(incsearch-nohl)<Plug>(asterisk-g#)
  
  map z*  <Plug>(incsearch-nohl0)<Plug>(asterisk-z*)
  map gz* <Plug>(incsearch-nohl0)<Plug>(asterisk-gz*)
  map z#  <Plug>(incsearch-nohl0)<Plug>(asterisk-z#)
  map gz# <Plug>(incsearch-nohl0)<Plug>(asterisk-gz#)
  let g:asterisk#keeppos = 1
endfunction
