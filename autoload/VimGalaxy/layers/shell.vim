""
" @section shell, layer-shell
" @parentsection layers
" VimGalaxy use deol.nvim for shell |deol|.

function! VimGalaxy#layers#shell#plugins() abort
  let plugins = [
        \ ['Shougo/deol.nvim']
        \ ]
  return plugins
endfunction
