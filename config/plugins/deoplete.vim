let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 10 " Test for better value
call deoplete#custom#set('_', 'sorters', ['sorter_word'])
call deoplete#custom#set('ultisnips', 'rank', 1000)
