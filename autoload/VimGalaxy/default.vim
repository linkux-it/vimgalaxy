scriptencoding utf-8

function! VimGalaxy#default#SetOptions() abort
endfunction

function! VimGalaxy#default#SetPlugins() abort
  call add(g:vimgalaxy_plugin_groups, 'core')
  call add(g:vimgalaxy_plugin_groups, 'ui')
  call add(g:vimgalaxy_plugin_groups, 'edit')
  call add(g:vimgalaxy_plugin_groups, 'colorscheme')
  call add(g:vimgalaxy_plugin_groups, 'git')
  call add(g:vimgalaxy_plugin_groups, 'checkers')
  call add(g:vimgalaxy_plugin_groups, 'autocomplete')
  call add(g:vimgalaxy_plugin_groups, 'shell')
  call add(g:vimgalaxy_plugin_groups, 'format')
  call add(g:vimgalaxy_plugin_groups, 'web')
  call add(g:vimgalaxy_plugin_groups, 'graphql')

  call add(g:vimgalaxy_plugin_groups, 'lang#javascript')
  call add(g:vimgalaxy_plugin_groups, 'lang#python')
  call add(g:vimgalaxy_plugin_groups, 'lang#lua')
endfunction


function! VimGalaxy#default#SetMappings() abort
  " With a map leader it's possible to do extra key combinations
  let mapleader = " "
  let g:mapleader = " "

  " tab navigation
  nnoremap <leader>th  :tabfirst<CR>
  nnoremap <leader>tj  :tabnext<CR>
  nnoremap <leader>tk  :tabprev<CR>
  nnoremap <leader>tl  :tablast<CR>
  nnoremap <leader>tn  :tabnew<CR>
  nnoremap <leader>tt  :tabedit<Space>
  nnoremap <leader>tm  :tabm<Space>
  nnoremap <leader>td  :tabclose<CR>

  " buffer navigation
  nnoremap <leader>bH  :bfirst<CR>
  nnoremap <leader>bj  :bnext<CR>
  nnoremap <leader>bk  :bprev<CR>
  nnoremap <leader>bL  :blast<CR>
  nnoremap <leader>bn  :enew<CR>
  nnoremap <leader>bm  :bm<Space>
  nnoremap <leader>bd  :BD<CR>
  nnoremap <leader>bun :BUN<CR>
  nnoremap <leader>bw  :BW<CR>
  nnoremap <leader>ba  :BA<CR>

  " Search maps
  nnoremap <leader>svg :vimgrep
  nnoremap <leader>sg :grep

  " File maps
  nnoremap <leader>fs :w<CR>
  nnoremap <leader>fsa :wa<CR>
  nnoremap <leader>fo :e

  nnoremap <leader>du :call dein#update()<cr>
  nnoremap <leader>dc :call dein#check_update()<cr>
endfunction
