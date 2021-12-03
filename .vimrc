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
	Plug 'dusans/vim-hardmode'
call plug#end()

" theme
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox

" nobg
hi Normal guibg=NONE ctermbg=NONE

" mapping
let mapleader = ' '

" tab management
nnoremap <leader>n :tabnew .<CR>
nnoremap <leader>l :tabn<CR>

" split resize
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <Leader>v :e $MYVIMRC<CR>

" escape remap
inoremap jk <esc>
inoremap <esc> <Nop>

" file nav
noremap <leader>^ <C-^>

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
