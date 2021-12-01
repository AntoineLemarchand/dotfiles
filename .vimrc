" basics
set nocompatible
set encoding=utf-8
set number relativenumber
set background=dark

" better split
set splitbelow splitright

" set indent
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set smartindent

" red col at 80
set colorcolumn=81

"plugins
call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'junegunn/goyo.vim'
	Plug 'morhetz/gruvbox'
call plug#end()

" theme
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox

" nobg
hi Normal guibg=NONE ctermbg=NONE

" disable arrow keys


" mapping
let mapleader = ' '
nnoremap <leader>f :Goyo<CR>
nnoremap <leader>n :tabnew .<CR>
nnoremap <leader>l :tabn<CR>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <Leader>v :e $MYVIMRC<CR>
"" arrowz + esc
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
inoremap jk <esc>
