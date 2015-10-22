if has('vim_starting')
    if &compatible
        set nocompatible
    endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

au BufRead,BufNewFile /etc/nginx* set ft=nginx

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle "Lokaltog/vim-easymotion"
NeoBundle "tyru/caw.vim"
NeoBundle "plasticboy/vim-markdown"
NeoBundleLazy "Rip-Rip/clang_complete", {
\ "autoload" : {
\   "filetypes" : ["cpp", "c", "hpp", "h"]
\ }
\}

NeoBundleLazy "vim-scripts/nginx.vim", {
\ "autoload" : {
\   "filetypes" : ["nginx"]
\ }
\}
NeoBundleCheck

call neobundle#end()

syntax on
set backspace=indent,eol,start
set relativenumber number

set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=exclude:.*

set statusline=%<%f\ %m%r%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%v
set laststatus=2

set visualbell t_vb=

set t_Co=256
colorscheme desert

" caw

nmap \c <Plug>(caw:I:toggle)
vmap \c <Plug>(caw:I:toggle)

nmap \C <Plug>(caw:I:uncomment)
vmap \C <Plug>(caw:I:uncomment)

" clang_complete
let g:clang_complete_copen      = 1
let g:clang_use_library         = 1
let g:clang_library_path        = "/usr/lib/llvm-3.5/lib"
let g:clang_user_options        = "-std=c++14"
let g:clang_auto_select         = 1
let g:clang_complete_patterns   = 1

" easy-motion
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-s2)
