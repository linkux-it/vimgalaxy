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
        \ ['terryma/vim-multiple-cursors'],
        \ ['haya14busa/vim-asterisk'],
        \ ['brooth/far.vim'],
        \ ['chrisbra/NrrwRgn'],
        \ ['terryma/vim-expand-region'],
        \ ['christoomey/vim-sort-motion'],
        \ ['godlygeek/tabular', { 'on_cmd': 'Tabularize'}],
        \ ['mattn/emmet-vim', { 'on_cmd' : 'EmmetInstall', 'on_ft': ['htmldjango','jsx','swig','html','xml','xsl','xslt','xsd','css','sass','scss','less','mustache','handlebars','hbs'] }],
        \ ['editorconfig/editorconfig-vim', { 'on_cmd' : 'EditorConfigReload', 'on_event': 'InsertEnter'}],
  \ ]
  return plugins
endfunction


function! VimGalaxy#layers#edit#config() abort
  let g:multi_cursor_next_key='<C-j>'
  let g:multi_cursor_prev_key='<C-k>'
  let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'
  let g:user_emmet_settings = {'html':{'quote_char': "'",},}

  let g:EditorConfig_exclude_patterns = ['fugitive://.*']
  let g:EditorConfig_exclude_patterns = ['scp://.*']
  let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

  let g:incsearch#magic = '\v' " very magic
  let g:incsearch#magic = '\V' " very nomagic
  let g:incsearch#magic = '\m' " magic
  let g:incsearch#magic = '\M' " nomagic

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
