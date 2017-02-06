scriptencoding utf-8

" Fsep && Psep
if has('win16') || has('win32') || has('win64')
  let s:Psep = ';'
  let s:Fsep = '\'
else
  let s:Psep = ':'
  let s:Fsep = '/'
endif

let s:plugins = []
let s:package_manager_directory = '~/.cache/dein'
let s:dein_path = join([s:package_manager_directory, 'repos', 'github.com',
			\ 'Shougo', 'dein.vim'], s:Fsep)

" This setup dein to handle all plugins
function! VimGalaxy#plugins#load() abort
  call s:install_manager()
  
  " if dein#load_state(s:package_manager_directory)
    call dein#begin(s:package_manager_directory)
  
    call dein#add(s:dein_path)
    call s:load_plugins()
    " call s:disable_plugins(g:spacevim_disabled_plugins)
    
    call dein#end()
    call dein#save_state()
    call dein#call_hook('source')
  " endif
endfunction


function! s:load_plugins() abort
  for group in g:vimgalaxy_plugin_groups
    for plugin in s:getLayerPlugins(group)
      if len(plugin) == 2
        call dein#add(plugin[0], plugin[1])

        if dein#tap(split(plugin[0], '/')[-1]) && get(plugin[1], 'loadconf', 0 )
          call s:defind_hooks(split(plugin[0], '/')[-1])
          " if get(plugin[1], 'loadconf_before', 0 )
          "  call zvim#plug#loadPluginBefore(split(plugin[0], '/')[-1])
          " endif
        endif
      else
        call dein#add(plugin[0])
      endif
    endfor

    call s:loadLayerConfig(group)
  endfor

  for plugin in g:vimgalaxy_custom_plugins
    if len(plugin) == 2
      call dein#add(plugin[0], plugin[1])
    else
      call dein#add(plugin[0])
    endif
  endfor
endfunction


function! s:getLayerPlugins(layer) abort
  let p = []
  try
    let p = VimGalaxy#layers#{a:layer}#plugins()
  catch /^Vim\%((\a\+)\)\=:E117/
  endtry
  return p
endfunction


function! s:loadLayerConfig(layer) abort
  try
    call VimGalaxy#layers#{a:layer}#config()
  catch /^Vim\%((\a\+)\)\=:E117/
  endtry
endfunction


function! s:disable_plugins(plugin_list) abort
  for name in a:plugin_list
    call dein#disable(name)
  endfor
endfunction


" function! SpaceVim#plugins#get(...) abort
" 
" endfunction


function! s:defind_hooks(bundle) abort
  let s:source = "call zvim#utils#source_rc('plugins/" . split(g:dein#name,'\.')[0] . ".vim')"
  call dein#config(g:dein#name, { 'hook_source' : s:source })
endfunction


function! s:install_manager()
  "auto install dein
  if !filereadable(join([expand(s:dein_path), 'README.md'], s:Fsep))
    if executable('git')
      exec '!git clone https://github.com/shougo/dein.vim ' . s:dein_path
      let g:spacevim_dein_installed = 1
    else
      echohl WarningMsg
      echom "You need install git!"
      echohl None
    endif
  endif

  exec 'set runtimepath+='. s:dein_path
endf

