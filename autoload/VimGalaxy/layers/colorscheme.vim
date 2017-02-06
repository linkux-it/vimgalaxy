""
" @section colorscheme, colorscheme
" @parentsection layers
" VimGalaxy default colorscheme is gruvbox, you can change it by set vimgalaxy
" option. add this to your `~/.VimGalaxy.d/init.vim`
" >
"   let g:vimgalaxy_colorscheme = 'solarized'
" <
" 
" colorschemes: if the colorscheme you want do not list below, PR welcome.
" >
"   base16-woodland
"   base16-unikitty-light
"   base16-unikitty-dark
"   base16-twilight
"   base16-tomorrow-night
"   base16-tomorrow
"   base16-summerfruit-light
"   base16-summerfruit-dark
"   base16-spacemacs
"   base16-solarized-light
"   base16-solarized-dark
"   base16-solar-flare
"   base16-shapeshifter
"   base16-seti-ui
"   base16-railscasts
"   base16-pop
"   base16-pico
"   base16-phd
"   base16-paraiso
"   base16-onedark
"   base16-oceanicnext
"   base16-ocean
"   base16-monokai
"   base16-mocha
"   base16-mexico-light
"   base16-materia
"   base16-marrakesh
"   base16-macintosh
"   base16-london-tube
"   base16-isotope
"   base16-ir-black
"   base16-hopscotch
"   base16-harmonic16-light
"   base16-harmonic16-dark
"   base16-green-screen
"   base16-grayscale-light
"   base16-grayscale-dark
"   base16-google-light
"   base16-google-dark
"   base16-github
"   base16-flat
"   base16-embers
"   base16-eighties
"   base16-dracula
"   base16-default-light
"   base16-default-dark
"   base16-darktooth
"   base16-cupcake
"   base16-codeschool
"   base16-chalk
"   base16-bright
"   base16-brewer
"   base16-bespin
"   base16-atelier-sulphurpool
"   base16-atelier-seaside
"   base16-atelier-savanna
"   base16-atelier-plateau
"   base16-atelier-lakeside
"   base16-atelier-heath
"   base16-atelier-forest
"   base16-atelier-estuary
"   base16-atelier-dune
"   base16-atelier-cave
"   base16-ashes
"   base16-apathy
"   base16-3024
"   OceanicNextLight
"   OceanicNext
"   dracula
"   Nordisk
"   monokai
"   https://github.com/daylerees/colour-schemes/tree/master/vim/colors
" <


function! VimGalaxy#layers#colorscheme#plugins() abort
  return [
        \ ['chriskempson/base16-vim'],
        \ ['mhartington/oceanic-next'],
        \ ['daylerees/colour-schemes'],
        \ ['dracula/vim'],
        \ ['kamwitsta/nordisk'],
        \ ['sickill/vim-monokai'],
  \ ]
endfunction
