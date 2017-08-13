let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

let g:ale_fixers = {
  \ 'javascript': ['eslint']
\ }

let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es6'
