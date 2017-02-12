function! VimGalaxy#layers#git#plugins() abort
  return [
        \ ['cohama/agit.vim', {'on_cmd': ['Agit', 'AgitFile']}],
        \ ['junegunn/gv.vim', {'on_cmd' : 'GV'}],
        \ ['lambdalisue/gina.vim', {'on_cmd': 'Gina'}],
        \ ['tpope/vim-fugitive'],
        \ ['gregsexton/gitv', {'on_cmd': ['Gitv']}],
  \ ]
endfunction


function! VimGalaxy#layers#git#config() abort
  nnoremap <silent> <Leader>gs :Gina status<CR>
  nnoremap <silent> <Leader>gd :Gina diff<CR>
  nnoremap <silent> <Leader>gc :Gina commit<CR>
  nnoremap <silent> <Leader>gb :Gina blame<CR>
  nnoremap <silent> <Leader>gp :Gina push<CR>
  nnoremap <silent> <Leader>gv :GV<CR>

  augroup vimgalaxy_layer_git
    autocmd!
    autocmd FileType diff nnoremap <buffer><silent> q :bd!<CR>
  augroup END
endfunction
