set number

if v:version < 802
    packadd! dracula
endif
syntax enable
colorscheme dracula
set cursorline
set ruler
set tabstop=4

set rtp+=/opt/homebrew/opt/fzf

autocmd FileType gitcommit set colorcolumn+=51
autocmd FileType gitcommit set colorcolumn+=73
