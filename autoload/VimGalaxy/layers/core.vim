function! VimGalaxy#layers#core#plugins() abort
  let plugins = [
        \ ['syngan/vim-vimlint', { 'on_ft' : 'vim'}],
        \ ['ynkdir/vim-vimlparser', { 'on_ft' : 'vim'}],
        \ ['tpope/vim-scriptease', { 'on_ft' : 'vim'}],
        \ ['lervag/vimtex', { 'on_ft' : 'tex'}],
        \ ['embear/vim-localvimrc'],
        \ ['c0r73x/neotags.nvim'],
        \ ['kopischke/vim-fetch'],
        \ ['vim-scripts/PreserveNoEOL'],
        \ ['christoomey/vim-tmux-navigator'],
  \ ] 
  return plugins
endfunction

function! VimGalaxy#layers#core#config() abort
  let g:localvimrc_sandbox = 0
  let g:localvimrc_persistent = 2

  set tags=./.tags
  let g:neotags_enabled = 1
  let g:neotags_file = ".tags"
  let g:neotags_ctags_args = []
endfunction

