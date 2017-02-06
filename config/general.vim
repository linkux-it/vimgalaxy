
if count(g:vimgalaxy_plugin_groups, 'colorscheme') && g:vimgalaxy_colorscheme !=# '' "{{{
  try
    exec 'colorscheme '. g:vimgalaxy_colorscheme
  catch
    exec 'colorscheme '. g:vimgalaxy_colorscheme_default
  endtry
else
  exec 'colorscheme '. g:vimgalaxy_colorscheme_default
endif
