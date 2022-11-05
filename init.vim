let g:user42 = 'alemarch'
let g:mail42 = 'alemarch@student.42.fr'
let mapleader = ' '

set number relativenumber
set background=dark

" better split
set splitbelow splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" col at 80
set colorcolumn=81

"plugins
call plug#begin('~/.vim/plugged')

" LUA ZONE
	" tmux integration
	Plug 'alexghergh/nvim-tmux-navigation'
	" color theme
	Plug 'morhetz/gruvbox'
	" file navigation
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
	" status line
	Plug 'nvim-lualine/lualine.nvim'
	" personal knowledge base
	Plug 'vimwiki/vimwiki'

" VIM SCRIPT ZONE
	" html autocorrect
	Plug 'mattn/emmet-vim'
	" terminal tmux integration
	Plug 'preservim/vimux'

call plug#end()

" theme
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox

" fzf
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>

" tmux terminal integration
nnoremap <leader>vp :VimuxPromptCommand<CR>
nnoremap <leader>vl :VimuxRunLastCommand<CR>
nnoremap <Leader>vi :VimuxInspectRunner<CR>
nnoremap <Leader>vz :VimuxZoomRunner<CR>


" quick config
nnoremap <Leader>v :e $MYVIMRC<CR>

" tab switch
nnoremap <Leader>t :tabnext<CR>

" disable neovim insert cursor
set guicursor=i:block
