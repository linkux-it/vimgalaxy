let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 10 " Test for better value
let deoplete#tag#cache_limit_size = 5000000

let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1

call deoplete#custom#set('_', 'sorters', ['sorter_word'])
call deoplete#custom#set('neosnippet', 'rank', 1000)
