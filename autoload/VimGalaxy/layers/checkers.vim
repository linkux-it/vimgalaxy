""
" @section checkers, layer-checkers
" @parentsection layers
" VimGalaxy use neomake as default syntax checker.

function! VimGalaxy#layers#checkers#plugins() abort
	let plugins = [
				\ ['neomake/neomake', {'merged' : 0, 'loadconf' : 1 , 'loadconf_before' : 1}]
	\ ]

	return plugins
endfunction


function! VimGalaxy#layers#checkers#config() abort
  let g:neomake_open_list = 2  " 1 open list and move cursor 2 open list without move cursor
  augroup Neomake_wsd
    au!
    autocmd! BufWritePost,BufEnter * Neomake
  augroup END
endfunction
