set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

set guioptions+=m  "show menu bar
set guioptions+=T  "show toolbar
set tabstop=2
set shiftwidth=2
set showmatch
set vb t_vb=
set ruler
set incsearch
set hlsearch
set number
set autoindent
set smartindent
"set et
if has("gui_macvim")
	set guifont=Bitstream\ Vera\ Sans\ Mono:h16
elseif has("gui_win32")
    set guifont=Consolas:h14:cANSI
else
	set guifont=Bitstream\ Vera\ Sans\ Mono\ 14
endif
colorscheme zenburn
syntax enable
set nocompatible
fixdel
set laststatus=1
"set statusline+=%F
highlight MatchParen ctermbg=blue guibg=lightblue
