""
" @section autocomplete, autocomplete
" @parentsection layers
" @subsection code completion
" VimGalaxy use deoplete as default completion engine.
"
" @subsection snippet
" VimGalaxy use ultisnips as snippet engine, and the snippets
" is `honza/vim-snippets`. for more information, please read
" |neosnippet|.


function! VimGalaxy#layers#autocomplete#plugins() abort
  let plugins = [
        \ ['Shougo/neosnippet'],
        \ ['Shougo/neosnippet-snippets'],
        \ ['honza/vim-snippets', {'on_event' : 'InsertEnter'}],
        \ ['Shougo/neoinclude.vim', {'on_event': 'InsertEnter'}],
        \ ['Shougo/neco-syntax', {'on_event': 'InsertEnter'}],
        \ ['jiangmiao/auto-pairs', {'on_event': 'InsertEnter'}],
        \ ['Shougo/deoplete.nvim', {'on_event' : 'InsertEnter', 'loadconf': 1}],
  \ ]
  return plugins
endfunction


function VimGalaxy#layers#autocomplete#config()

  " Plugin key-mappings.
  " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)

  " For conceal markers.
  if has('conceal')
    set conceallevel=2 concealcursor=niv
  endif
  " Enable snipMate compatibility feature.
  let g:neosnippet#enable_snipmate_compatibility = 1
endfunction
