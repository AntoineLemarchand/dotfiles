local set = vim.opt

-- leader key as space
vim.g.mapleader = ' '

-- disable neovim insert cursor
set.guicursor="i:block"

-- 42 school setup
vim.g.user42 = 'alemarch'
vim.g.mail = 'alemarch@student.42.fr'

set.number = true
set.relativenumber = true

set.background = "dark"

-- better split
set.splitbelow = true
set.splitright = true

-- col at 80
set.colorcolumn = "81"

-- theme
vim.g.gruvbox_contrast_dark='medium'
vim.cmd [[silent! colorscheme gruvbox]]

require("mappings")
require("plugin")

require('colorizer').setup()

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-lspconfig").setup_handlers {
	function (server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup {}
	end,
}

-- Lualine config
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

-- vimwiki
vim.g.vimwiki_list = {{
	path = '~/vimwiki/wiki',
	path_html = '~/vimwiki/docs',
	auto_toc = 1
}}
