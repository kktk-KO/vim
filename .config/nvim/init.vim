call plug#begin(stdpath('data') . '/plugged')

Plug 'tyru/caw.vim', { 'tag': '*' }
Plug 'dense-analysis/ale', { 'tag': '*', 'for': ['c', 'cpp'] }
Plug 'Lokaltog/vim-easymotion', { 'tag': '*' }
Plug 'prabirshrestha/vim-lsp', { 'tag': '*', 'for': ['go'] }
Plug 'mattn/vim-lsp-settings', { 'tag': '*', 'for': ['go'] }
Plug 'prabirshrestha/asyncomplete.vim', { 'tag': '*', 'for': ['go'] }
Plug 'prabirshrestha/asyncomplete-lsp.vim', { 'tag': '*', 'for': ['go'] }

"Plug 'fatih/vim-go', { 'tag': '*', 'for': ['go'] }

call plug#end()

filetype plugin on
