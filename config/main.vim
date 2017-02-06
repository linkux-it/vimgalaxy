let g:Config_Main_Home = fnamemodify(expand('<sfile>'), ':p:h:gs?\\?'.((has('win16') || has('win32') || has('win64'))?'\':'/') . '?')

call zvim#utils#source_rc('init.vim')

call VimGalaxy#default()
call VimGalaxy#loadCustomConfig()
call VimGalaxy#end()

call zvim#utils#source_rc('general.vim')

if has('nvim')
  call zvim#utils#source_rc('neovim.vim')
endif

" This needs call at end
" enable syntax highlighting
 syntax on

 " Required:
 " Enable filetype plugins
 filetype plugin indent on

