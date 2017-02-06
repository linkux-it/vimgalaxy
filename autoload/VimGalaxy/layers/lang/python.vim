""
" @section lang#python, layer-lang-python
" @parentsection layers
" To make this layer works well, you should install jedi.
" @subsection mappings
" >
"   mode            key             function
" <

function! VimGalaxy#layers#lang#python#plugins() abort
  let plugins = [
        \ ['zchee/deoplete-jedi', { 'on_ft' : 'python'}],
        \ ['jmcantrell/vim-virtualenv', { 'on_ft' : 'python'}],
  \ ]

  return plugins
endfunction
