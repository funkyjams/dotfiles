
syntax on
set background=dark
set mouse=a
set ruler
set number
set nowrap

" sudo save:
cmap w!! w !sudo tee > /dev/null %
cmap Q q
