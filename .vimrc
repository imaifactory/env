syntax on
set nocompatible
set title
set textwidth=78
set number
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set tabstop=4
set expandtab
set smarttab
set shiftround
set nowrap
set shiftwidth=4
set tw=0
set ignorecase

" neocomplcache
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

map <F5> :!perl -MFindBin::libs<CR>
