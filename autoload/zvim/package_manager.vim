let s:save_cpo = &cpo
set cpo&vim


" function! zvim#plug#end() abort
"     if g:spacevim_plugin_manager == 'neobundle'
"         call neobundle#end()
"         if g:spacevim_checkinstall == 1
"             NeoBundleCheck
"         endif
"     elseif g:spacevim_plugin_manager == 'dein'
"         call dein#end()
"         if g:spacevim_checkinstall == 1
"             silent! let flag = dein#check_install()
"             if flag
"                 augroup SpaceVimCheckInstall
"                     au!
"                     au VimEnter * call dein#install()
"                 augroup END
"             endif
"         endif
"         call dein#call_hook('source')
"     elseif g:spacevim_plugin_manager == 'vim-plug'
"         call plug#end()
"     endif
" endfunction
"

let &cpo = s:save_cpo
unlet s:save_cpo
