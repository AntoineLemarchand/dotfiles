let g:user42 = 'alemarch'
let g:mail42 = 'alemarch@student.42.fr'

" basics
set nocompatible
set encoding=utf-8
set number relativenumber
set background=dark

" better split
set splitbelow splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" set indent
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set smartindent

" col at 80
set colorcolumn=81

"plugins
call plug#begin('~/.vim/plugged')
	" vim status bar
	Plug 'vim-airline/vim-airline'
	" distraction less writing
	Plug 'junegunn/goyo.vim'
	" color theme
	Plug 'morhetz/gruvbox'
	Plug 'vim-airline/vim-airline-themes'
	" html autocorrect
	Plug 'mattn/emmet-vim'
	" tmux integration
	Plug 'christoomey/vim-tmux-navigator'
	" tmux terminal integration
	Plug 'preservim/vimux'
	" file navigation
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	" langage color scheme
	Plug 'bfrg/vim-cpp-modern'
	Plug 'rust-lang/rust.vim'
	Plug 'cespare/vim-toml'
	" personal knowledge base
	Plug 'vimwiki/vimwiki'
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

" tmux terminal integration
nnoremap <leader>vp :VimuxPromptCommand<CR>
nnoremap <leader>vl :VimuxRunLastCommand<CR>
nnoremap <Leader>vi :VimuxInspectRunner<CR>
nnoremap <Leader>vz :VimuxZoomRunner<CR>


" quick config
nnoremap <Leader>v :e $MYVIMRC<CR>

" backspace
set backspace=indent,eol,start
