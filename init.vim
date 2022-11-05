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
	" lsp/dap manager
	Plug 'williamboman/mason.nvim'
	" lsp config
	Plug 'williamboman/mason-lspconfig.nvim'
	Plug 'neovim/nvim-lspconfig'
	" code completion
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'hrsh7th/cmp-buffer'
	Plug 'hrsh7th/cmp-path'
	Plug 'hrsh7th/cmp-cmdline'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'SirVer/ultisnips'
	Plug 'quangnguyen30192/cmp-nvim-ultisnips'

	

" VIM SCRIPT ZONE
	" html autocorrect
	Plug 'mattn/emmet-vim'
	" terminal tmux integration
	Plug 'preservim/vimux'

call plug#end()

set completeopt=menu,menuone,noselect

" theme
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='medium'
colorscheme gruvbox

" fzf
nnoremap <leader>f :Telescope find_files<CR>
nnoremap <leader>b :Telescope buffers<CR>
nnoremap <leader>m :Mason<CR>

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

" LUA CONFIG
lua << END
-- nvim cmp config
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true })
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'ultisnips' },
    }, {
      { name = 'buffer' },
    })
  })

-- auto lsp server
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
	function (server_name) -- default handler (optional)
	    require("lspconfig")[server_name].setup {}
	end,
}

-- lualine config
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {''},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END
