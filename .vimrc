let g:user42 = 'alemarch'
let g:mail42 = 'alemarch@student.42.fr'

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
	Plug 'mattn/emmet-vim'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'tmux-plugins/vim-tmux'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
call plug#end()

" theme
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox

" nobg
hi Normal guibg=NONE ctermbg=NONE

" mapping
let mapleader = ' '

" fzf
nnoremap <leader>f :Files<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>b :Buffers<CR>

" split resize
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <Leader>v :e $MYVIMRC<CR>

" file nav
noremap <leader>^ <C-^>

" backspace
set backspace=indent,eol,start
