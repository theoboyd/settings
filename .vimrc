syntax on
color dracula
filetype plugin indent on
if has("gui_running")
    set macligatures
endif
set guifont=Fira\ Code:h12
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set colorcolumn=120
set background=dark
set vb t_vb=
set shortmess+=I
command! WQ wq
command! Wq wq
command! W  w
command! Q  q
" Re-save using sudo (tee hack)
cmap sw! w !sudo tee > /dev/null %
