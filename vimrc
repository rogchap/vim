" basic setings
filetype plugin indent on
syntax on
colorscheme monokai
set termguicolors
set colorcolumn=120
set backspace=indent,eol,start
set encoding=utf-8
set fileencoding=utf-8

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
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" highlight words when searching
set hlsearch

" lightline setting
set laststatus=2
set noshowmode

" command-t settings
let g:CommandTCancelMap=['<ESC>', '<C-c>']

" vim-go settings
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_metalinter_command='golangci-lint'

" onmicomplete settings
set completeopt=menuone,noinsert

" YouCompleteMe settings
let g:ycm_key_list_stop_completion = [ '<C-y>', '<Enter>' ]

" shortcut to open the previous file 
nnoremap <Leader><Leader> :e#<CR>
" shortcut to reindex command-t
nnoremap <Leader>r :CommandTFlush<CR>

" shortcut to bring up omnicomplete
imap <C-@> <C-Space>
imap <C-Space> <C-x><C-o>
