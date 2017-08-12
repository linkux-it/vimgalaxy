let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 10 " Test for better value

let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1

call deoplete#custom#set('_', 'sorters', ['sorter_word'])
call deoplete#custom#set('ultisnips', 'rank', 1000)
