-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "nvim-lua/plenary.nvim"
	use { "catppuccin/nvim", as = "catppuccin" }

	-- telescope
  use {
		'nvim-telescope/telescope.nvim',
  }
	-- tree sitter
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	-- harpoon from primeagen
	use ('theprimeagen/harpoon')
	--undo tree
	use ('mbbill/undotree')
	--fugitive for git
	use('tpope/vim-fugitive')
	use(
		'mason-org/mason.nvim'
	)
	use('mason-org/mason-lspconfig.nvim')
	-- lsps
	use('neovim/nvim-lspconfig')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	--prettier, config file in after/
	use("prettier/vim-prettier")
end)

