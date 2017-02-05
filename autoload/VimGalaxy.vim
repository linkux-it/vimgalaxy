""
" @section Introduction, intro
" @stylized Maktaba
" @library
" @order intro version dicts functions exceptions layers faq
"   VimGalaxy is a Modular configuration, a bundle of custom settings
" and plugins, for Vim/Neovim. It got inspired by spacemacs and spacevim
"

""
" @section CONFIGURATION, config
" VimGalaxy use `~/.VimGalaxy.d/init.vim` as it's default global config file.
" you can set all the VimGalaxy options and layers in it. `~/.VimGalaxy.d/` will
" also be added to runtimepath, so you can write your own script in it.
"

""
" Version of VimGalaxy, this value can not be changed.
scriptencoding utf-8
let g:vimgalaxy_version = '0.1.0'
lockvar g:vimgalaxy_version

let g:vimgalaxy_dein_installed = 0


function! VimGalaxy#loadCustomConfig() abort
    let custom_glob_conf = expand('~/.VimGalaxy.d/init.vim')

    if filereadable(custom_glob_conf)
        if isdirectory(expand('~/.VimGalaxy.d/'))
            set runtimepath^=~/.VimGalaxy.d
        endif
        exe 'source ' . custom_glob_conf
    endif
endfunction


function! VimGalaxy#end() abort
    " ""
    " " generate tags for VimGalaxy
    " let help = fnamemodify(g:Config_Main_Home, ':p:h:h') . '/doc'
    " exe 'helptags ' . help
    "
    " call VimGalaxy#plugins#load()
endfunction


function! VimGalaxy#default() abort
    " call VimGalaxy#default#SetOptions()
    " call VimGalaxy#default#SetPlugins()
    " call VimGalaxy#default#SetMappings()
endfunction


function! VimGalaxy#welcome() abort
    " if exists(':NERDTreeToogle') == 2
    "     NERDTreeToogle
    " endif

    if exists(':Startify') == 2
        wincmd p
        Startify
    endif
endfunction
