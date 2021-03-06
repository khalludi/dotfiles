" Use pathogen for plugins
execute pathogen#infect()

" Basic settings
colors zenburn
syntax on
set ruler

" Pathogen plugin settings
autocmd vimenter * NERDTree

" => Text, tab and indent related

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
