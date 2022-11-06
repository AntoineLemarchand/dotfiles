return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- tmux integration
	use 'alexghergh/nvim-tmux-navigation'
	-- color theme
	use "ellisonleao/gruvbox.nvim"
	-- file navigation
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	-- status line
	use 'nvim-lualine/lualine.nvim'
	-- lsp/dap manager
	use 'williamboman/mason.nvim'
	-- lsp config
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	-- vim presentation
	use 'Chaitanyabsprip/present.nvim'

	-- VIM SCRIPT ZONE
	-- html autocorrect
	use 'mattn/emmet-vim'
	-- terminal tmux integration
	use 'preservim/vimux'
	-- personal knowledge base
	use 'vimwiki/vimwiki'
end)
