
fu! zvim#utils#source_rc(file) abort
  if filereadable(g:Config_Main_Home. '/' . a:file)
    execute 'source ' . g:Config_Main_Home  . '/' . a:file
  endif
endf
