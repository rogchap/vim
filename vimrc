" basic setings
filetype plugin indent on
syntax on
colorscheme monokai
set termguicolors
set colorcolumn=120
set backspace=indent,eol,start
set encoding=utf-8
set fileencoding=utf-8
set exrc
set secure
set undodir=~/.vim/undodir
set undofile
set clipboard+=unnamed
set pyxversion=3

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
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" highlight words when searching
set hlsearch

" lightline setting
set laststatus=2
set noshowmode

" command-t settings
"let g:CommandTCancelMap=['<ESC>', '<C-c>']
" shortcut to reindex command-t
"nnoremap <Leader>r :CommandTFlush<CR>
" arrow keys for command-t
"nmap <esc>OA <Up>
"nmap <esc>OB <Down>
"nmap <esc>OC <Right>
"nmap <esc>OD <Left>

set rtp+=/usr/local/opt/fzf
nnoremap <Leader>t :FZF<CR>

let g:ackprg = 'ag --vimgrep'
nnoremap <Leader>f :Ag!<CR>

" vim-go settings
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_metalinter_command='golangci-lint'
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" onmicomplete settings
set completeopt=menuone,noinsert
" shortcut to bring up omnicomplete
imap <C-@> <C-Space>
imap <C-Space> <C-x><C-o>
let g:deoplete#enable_at_startup = 1

" shortcut to open the previous file 
nnoremap <Leader><Leader> :e#<CR>
