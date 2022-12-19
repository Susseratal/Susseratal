""""""""""""""""""""""""""""""""
" __   _(_)_ __ ___  _ __ ___  " 
" \ \ / / | '_ ` _ \| '__/ __| "
"  \ V /| | | | | | | | | (__  "
"   \_/ |_|_| |_| |_|_|  \___| "
"                              "
""""""""""""""""""""""""""""""""                           

unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

packadd! dracula
packadd! lucid
packadd! orbital
packadd! sunbather
syntax enable
colorscheme dracula
" colorscheme lucid

:set expandtab
:set number
:set spelllang=en
:set guioptions=0
:set backspace=indent,start
:set guifont=FreeMono\ 11
:set nowrap
:set foldmethod=manual
:set splitright
:set splitbelow
:set showmatch
:set shiftwidth=4
:set softtabstop=4
:set listchars=tab:\|\ 
set list

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4 " 1 = open files in new hsplit -- 2 = open files in new vsplit -- 3 = open files in new tab -- 4 = open files in prev window
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
        autocmd!
        autocmd VimEnter * :Vexplore
augroup END

:nmap <C-B> :set guioptions=0<CR>
:nmap <C-j> :set go+=m<CR>
:nmap <C-s> :set spell<CR>
:nmap <C-a> :set invspell<CR>
:nmap ; :
