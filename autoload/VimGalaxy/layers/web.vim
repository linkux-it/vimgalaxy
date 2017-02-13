function! VimGalaxy#layers#web#plugins() abort
  let plugins = [
        \ ['groenewege/vim-less', { 'on_ft' : ['less']}],
        \ ['cakebaker/scss-syntax.vim', { 'on_ft' : ['scss','sass']}],
        \ ['hail2u/vim-css3-syntax', { 'on_ft' : ['css','scss','sass']}],
        \ ['ap/vim-css-color', { 'on_ft' : ['css','scss','sass','less','styl']}],
        \ ['othree/html5.vim', { 'on_ft' : ['html']}],
        \ ['wavded/vim-stylus', { 'on_ft' : ['styl']}],
        \ ['digitaltoad/vim-pug', { 'on_ft' : ['jade']}],
        \ ['juvenn/mustache.vim', { 'on_ft' : ['mustache']}],
        \ ['leafgarland/typescript-vim', { 'on_ft' : ['typescript']}],
        \ ['leshill/vim-json', { 'on_ft' : ['javascript','json']}],
        \ ['mxw/vim-jsx', { 'on_ft' : ['jsx','javascript.jsx']}],
        \ ['plasticboy/vim-markdown', { 'on_ft' : 'markdown'}],
        \ ['gregsexton/MatchTag', { 'on_ft' : ['html', 'xml']}],
  \ ] 
  return plugins
endfunction

function! VimGalaxy#layers#web#config() abort
  let g:jsx_ext_required = 1
  let g:vim_markdown_conceal = 0
  let g:vim_markdown_folding_disabled = 1
endfunction
