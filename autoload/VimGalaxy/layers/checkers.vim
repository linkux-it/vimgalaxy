""
" @section checkers, layer-checkers
" @parentsection layers
" VimGalaxy use neomake as default syntax checker.
" TODO: later add this
        " \ ['dojoteef/neomake-autolint'],

function! VimGalaxy#layers#checkers#plugins() abort
  let plugins = [
        \ ['neomake/neomake', {'loadconf': 1}],
  \ ]

  return plugins
endfunction


function! VimGalaxy#layers#checkers#config() abort
  autocmd! BufWritePost * Neomake
endfunction
