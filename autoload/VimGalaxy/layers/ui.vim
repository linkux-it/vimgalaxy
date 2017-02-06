scriptencoding utf-8

function! VimGalaxy#layers#ui#plugins() abort
  return [
    \ ['vim-airline/vim-airline', { 'merged' : 0,  'loadconf' : 1}],
    \ ['vim-airline/vim-airline-themes', { 'merged' : 0}],
    \ ['Yggdroot/indentLine'],
    \ ['Konfekt/FastFold'],
    \ ['junegunn/limelight.vim'],
    \ ['qpkorr/vim-bufkill'],
    \ ['mhinz/vim-startify', {'loadconf' : 1}],
  \ ]
endfunction

function! VimGalaxy#layers#ui#config() abort
endfunction
