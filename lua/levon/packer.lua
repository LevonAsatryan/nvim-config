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

	-- barbecue, for wrapping line
	use({
 	 "utilyre/barbecue.nvim",
 	 tag = "*",
 	 requires = {
 	   "SmiteshP/nvim-navic",
 	   "nvim-tree/nvim-web-devicons", -- optional dependency
 	 },
 	 after = "nvim-web-devicons", -- keep this if you're using NvChad
 	 config = function()
 	   require("barbecue").setup()
 	 end,
	})

	-- Status line
	use {
 	 'nvim-lualine/lualine.nvim',
 	 requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- These optional plugins should be loaded directly because of a bug in Packer lazy loading
	use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
	use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
	use 'romgrk/barbar.nvim'

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

