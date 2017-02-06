" vim-fugitive and gitv will be removed? in favor of vim-gita and gv
function! VimGalaxy#layers#git#plugins() abort
  return [
        \ ['cohama/agit.vim', {'on_cmd': ['Agit', 'AgitFile']}],
        \ ['junegunn/gv.vim', {'on_cmd' : 'GV'}],
        \ ['lambdalisue/vim-gita', {'on_cmd': 'Gita'}],
        \ ['tpope/vim-fugitive'],
        \ ['gregsexton/gitv', {'on_cmd': ['Gitv']}],
  \ ]
endfunction


function! VimGalaxy#layers#git#config() abort
  nnoremap <silent> <Leader>gs :Gita status<CR>
  nnoremap <silent> <Leader>gd :Gita diff<CR>
  nnoremap <silent> <Leader>gc :Gita commit<CR>
  nnoremap <silent> <Leader>gb :Gita blame<CR>
  nnoremap <silent> <Leader>gp :Gita push<CR>
  nnoremap <silent> <Leader>gv :GV<CR>

  augroup vimgalaxy_layer_git
    autocmd!
    autocmd FileType diff nnoremap <buffer><silent> q :bd!<CR>
  augroup END
endfunction
