set number

if v:version < 802
    packadd! dracula
endif
syntax enable
colorscheme dracula
set cursorline
set tabstop=4

set rtp+=/opt/homebrew/opt/fzf
