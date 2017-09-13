let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es6'
let g:ale_lint_delay = 5000 " Wait for 5 seg before calling linters.

let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ 'python': ['autopep8']
\ }

nmap <silent><leader>lj <Plug>(ale_next_wrap)
nmap <silent><leader>lk <Plug>(ale_previous_wrap)
nmap <silent><leader>lh <Plug>(ale_first)
nmap <silent><leader>ll <Plug>(ale_last)
nmap <leader>lf :ALEFix
nmap <leader>ls :ALESuggest
