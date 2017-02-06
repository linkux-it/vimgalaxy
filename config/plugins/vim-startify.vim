let s:header = get(g:, 'startify_custom_header', [
  \'',
  \'',
  \'   ___      ___ ___  _____ ______           ________  ________  ___       ________     ___    ___ ___    ___ ',
  \'  |\  \    /  /|\  \|\   _ \  _   \        |\   ____\|\   __  \|\  \     |\   __  \   |\  \  /  /|\  \  /  /|',
  \'  \ \  \  /  / | \  \ \  \\\__\ \  \       \ \  \___|\ \  \|\  \ \  \    \ \  \|\  \  \ \  \/  / | \  \/  / /',
  \'   \ \  \/  / / \ \  \ \  \\|__| \  \       \ \  \  __\ \   __  \ \  \    \ \   __  \  \ \    / / \ \    / / ',
  \'    \ \    / /   \ \  \ \  \    \ \  \       \ \  \|\  \ \  \ \  \ \  \____\ \  \ \  \  /     \/   \/  /  /  ',
  \'     \ \__/ /     \ \__\ \__\    \ \__\       \ \_______\ \__\ \__\ \_______\ \__\ \__\/  /\   \ __/  / /    ',
  \'      \|__|/       \|__|\|__|     \|__|        \|_______|\|__|\|__|\|_______|\|__|\|__/__/ /\ __\\___/ /     ',
  \'                                                                                      |__|/ \|__\|___|/      ',
  \'                                                                                                             ',
  \'                                                                                                             ',
  \'                                   version : ' . g:vimgalaxy_version . '   by : linkux-it.com',
  \'',
  \ ])


let g:startify_list_order = [
      \ ['   MRU '],       'files' ,
      \ ['   MRU DIR '],   'dir',
      \ ['   Sessions '],  'sessions',
      \ ['   Bookmarks '], 'bookmarks',
      \ ]

let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ 'bundle/.*/doc',
      \ ]

let g:startify_bookmarks              = [ {'c': '~/.VimGalaxy.d/init.vim'} ]
let g:startify_change_to_dir          = 0
let g:startify_enable_special         = 0
let g:startify_files_number           = 8
"let g:startify_session_autoload       = 1
"let g:startify_session_delete_buffers = 1
"let g:startify_session_persistence    = 1


function! s:center_header(lines) abort
  let longest_line   = max(map(copy(a:lines), 'len(v:val)'))
  let centered_lines = map(copy(a:lines), 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction


let g:startify_custom_header = s:center_header(s:header)
