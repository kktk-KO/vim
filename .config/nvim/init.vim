call plug#begin(stdpath('data') . '/plugged')

Plug 'tyru/caw.vim', { 'tag': '*' }
Plug 'fatih/vim-go', { 'tag': '*', 'for': ['go'] }
Plug 'dense-analysis/ale', { 'tag': '*', 'for': ['c', 'cpp'] }
Plug 'Lokaltog/vim-easymotion', { 'tag': '*' }

call plug#end()
