" basic setings
filetype on
syntax on
colorscheme monokai
set termguicolors
set colorcolumn=120
set backspace=indent,eol,start

" show line numbers
set number

" show matching parenthesis
set showmatch

" change the leader key to space
let mapleader=" "

" store history
set hidden
set history=100

" smarter indenting
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" highlight words when searching
set hlsearch

" command-t settings
let g:CommandTCancelMap=['<ESC>', '<C-c>']

" shortcut to open the previous file 
nnoremap <Leader><Leader> :e#<CR>

" shortcut to reindex command-t
noremap <Leader>r :CommandTFlush<CR>
