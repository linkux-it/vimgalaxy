""
" @section autocomplete, autocomplete
" @parentsection layers
" @subsection code completion
" VimGalaxy use deoplete as default completion engine.
"
" @subsection snippet
" VimGalaxy use ultisnips as snippet engine, and the snippets
" is `honza/vim-snippets`. for more information, please read
" |ultisnips|.


function! VimGalaxy#layers#autocomplete#plugins() abort
  let plugins = [
        \ ['SirVer/ultisnips', {'merged' : 0}],
        \ ['honza/vim-snippets', {'on_i' : 1}],
        \ ['Shougo/neoinclude.vim', {'on_i' : 1}],
        \ ['Shougo/neco-syntax', {'on_i' : 1}],
        \ ['jiangmiao/auto-pairs', {'on_i' : 1}],
        \ ['Shougo/deoplete.nvim', {'on_i' : 1, 'loadconf': 1}],
        \ ]
  return plugins
endfunction


function VimGalaxy#layers#autocomplete#config()
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-j>"
  let g:UltiSnipsJumpBackwardTrigger="<c-k>"

  let g:deoplete#enable_at_startup = 1
  call deoplete#custom#set('_', 'sorters', ['sorter_word'])
  call deoplete#custom#set('ultisnips', 'rank', 9999)
endfunction
