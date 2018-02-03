function! VimGalaxy#layers#core#plugins() abort
  let plugins = [
        \ ['syngan/vim-vimlint', { 'on_ft' : 'vim'}],
        \ ['ynkdir/vim-vimlparser', { 'on_ft' : 'vim'}],
        \ ['tpope/vim-scriptease', { 'on_ft' : 'vim'}],
        \ ['lervag/vimtex', { 'on_ft' : 'tex'}],
        \ ['embear/vim-localvimrc'],
        \ ['ludovicchabant/vim-gutentags'],
        \ ['kopischke/vim-fetch'],
        \ ['vim-scripts/PreserveNoEOL'],
        \ ['christoomey/vim-tmux-navigator'],
        \ ['wikitopian/hardmode'],
        \ ['Shougo/context_filetype.vim'],
        \ ['tpope/vim-projectionist'],
        \ ['tpope/vim-dispatch'],
        \ ['radenling/vim-dispatch-neovim'],
        \ ['janko-m/vim-test'],
        \ ['mhinz/vim-grepper'],
  \ ]
  return plugins
endfunction

function! VimGalaxy#layers#core#config() abort
  let g:localvimrc_sandbox = 0
  let g:localvimrc_persistent = 2

  set tags=./.tags
  let g:gutentags_ctags_tagfile='./.tags'
  let g:gutentags_file_list_command = 'rg --files'

  let g:test#strategy = {
    \ 'nearest': 'neovim',
    \ 'file':    'dispatch',
    \ 'suite':   'basic',
  \}

  " autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
  nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

  " nmap <silent> <leader>t :TestNearest<CR>
  " nmap <silent> <leader>T :TestFile<CR>
  " nmap <silent> <leader>a :TestSuite<CR>
  " nmap <silent> <leader>l :TestLast<CR>
  " nmap <silent> <leader>g :TestVisit<CR>

  nmap gs  <plug>(GrepperOperator)
  xmap gs  <plug>(GrepperOperator)

  " nnoremap <leader>g :Grepper -tool git<cr>
  " nnoremap <leader>G :Grepper -tool ag<cr>
  "
  " nmap gs <plug>(GrepperOperator)
  " xmap gs <plug>(GrepperOperator)
  "
  " " Optional. The default behaviour should work for most users.
  " let g:grepper               = {}
  " let g:grepper.tools         = ['git', 'ag', 'rg']
  " let g:grepper.jump          = 1
  " let g:grepper.next_tool     = '<leader>g'
  " let g:grepper.simple_prompt = 1
  " let g:grepper.quickfix      = 0
  " nnoremap <leader>g :Grepper -tool git -noopen -jump<cr>
  " nnoremap <leader>* :Grepper -tool ag -cword -noprompt<cr>
  " nnoremap <leader>g :Grepper -tool rg<cr>
  " nnoremap <leader>G :Grepper -tool rg -buffers<cr>
  " command! Todo :Grepper
      " \ -noprompt
      " \ -tool git
      " \ -grepprg git grep -nIi '\(TODO\|FIXME\)'
endfunction

