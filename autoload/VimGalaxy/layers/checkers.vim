""
" @section checkers, layer-checkers
" @parentsection layers
" VimGalaxy use neomake as default syntax checker.

function! VimGalaxy#layers#checkers#plugins() abort
  let plugins = [
        \ ['neomake/neomake'],
        \ ['dojoteef/neomake-autolint'],
  \ ]

  return plugins
endfunction


function! VimGalaxy#layers#checkers#config() abort
  let g:neomake_javascript_enabled_makers = ['eslint', 'flow']
  let g:neomake_autolint_sign_column_always = 1

  augroup Neomake_wsd
    au!
    autocmd! BufWritePost,BufEnter * Neomake
  augroup END
endfunction
