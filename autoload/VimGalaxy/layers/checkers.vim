""
" @section checkers, layer-checkers
" @parentsection layers
" VimGalaxy use neomake as default syntax checker.

function! VimGalaxy#layers#checkers#plugins() abort
  let plugins = [
        \ ['w0rp/ale', {'loadconf': 1}],
  \ ]

  return plugins
endfunction


function! VimGalaxy#layers#checkers#config() abort
endfunction
