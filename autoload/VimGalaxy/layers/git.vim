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
  nnoremap <silent> <Leader>gb :Gina blame<CR>
  nnoremap <silent> <Leader>gc :Gina!! commit<CR>
  nnoremap <silent> <Leader>gp :Gina!! push<CR>
  nnoremap <silent> <Leader>gu :Gina!! pull<CR>
  nnoremap <silent> <Leader>gr :Gina!! rebase<CR>
  nnoremap <silent> <Leader>gri :Gina!! rebase -i<CR>
  nnoremap <silent> <Leader>gv :GV<CR>

  if exists('g:lmap')
    " Create new menus not based on existing mappings:
    let g:lmap.g = {
          \'name' : 'Git Menu',
          \'s' : ['Gina status', 'Git Status'],
          \'d' : ['Gina diff', 'Git Diff'],
          \'c' : ['Gina commit', 'Git Commit'],
          \'b' : ['Gina blame', 'Git Blame'],
          \'p' : ['Gina push', 'Git Push'],
          \'u' : ['Gina pull', 'Git Pull'],
          \'v' : ['GV', 'Git Visual'],
    \}
  endif

  augroup vimgalaxy_layer_git
    autocmd!
    autocmd FileType diff nnoremap <buffer><silent> q :bd!<CR>
  augroup END
endfunction
