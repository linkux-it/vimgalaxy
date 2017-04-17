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


function! VimGalaxy#layers#lang#python#config() abort
  let g:jedi#completions_enabled = 0
  let g:jedi#auto_vim_configuration = 0
  let g:jedi#smart_auto_mappings = 0
  let g:jedi#show_call_signatures = 0
endfunction
