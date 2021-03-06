function! VimGalaxy#layers#lang#javascript#plugins() abort
    let plugins = [
      \ ['pangloss/vim-javascript', {'on_ft' : ['javascript']}],
      \ ['mmalecki/vim-node.js', {'on_ft' : ['javascript']}],
      \ ['carlitux/deoplete-ternjs', { 'on_ft' : ['javascript']}],
      \ ['carlitux/deoplete-flow', { 'on_ft' : ['javascript']}],
      \ ['othree/javascript-libraries-syntax.vim', { 'on_ft' : ['javascript','coffee','ls','typescript']}],
    \ ]
    return plugins
endfunction


function! VimGalaxy#layers#lang#javascript#config() abort
  let g:deoplete#sources#ternjs#filetypes = [
    \ 'jsx',
    \ 'javascript.jsx',
  \ ]

  let g:deoplete#sources#flow#filetypes = [
    \ 'jsx',
    \ 'javascript.jsx',
  \ ]
endfunction
