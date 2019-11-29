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

" escape search highlight
nnoremap <esc> :noh<return><esc>
" needed so that vim still understands escape sequences
nnoremap <esc>^[ <esc>^[

set rtp+=/usr/local/opt/fzf
nnoremap <Leader>t :FZF<CR>
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
let g:ackprg = 'ag --vimgrep'
nnoremap <Leader>f :Ag<CR>
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview({ 'options': ['--color', 'hl:243,hl+:197'] },'right:50%', '?'), <bang>0)

" vim-go settings
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_metalinter_command='golangci-lint'
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_gopls_complete_unimported = 1
let g:go_gopls_use_placeholders = 1
let g:go_template_autocreate = 0
let g:go_template_use_pkg = 1
let g:go_decls_mode = 'fzf'
nnoremap <Leader><CR> :GoDef<CR>

" onmicomplete settings
set completeopt=menuone,noinsert
" shortcut to bring up omnicomplete
imap <C-@> <C-Space>
imap <C-Space> <C-x><C-o>
let g:deoplete#enable_at_startup = 1

" shortcut to open the previous file 
nnoremap <Leader><Leader> :e#<CR>
