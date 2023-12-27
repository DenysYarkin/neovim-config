-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({ 'rose-pine/neovim', as = 'rose-pine' }) 

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  
  use "nvim-lua/plenary.nvim"
  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  -- {'williamboman/mason.nvim'},
		  -- {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
  }
  
  use "scalameta/nvim-metals"



  use "nvim-tree/nvim-tree.lua"
  use "nvim-tree/nvim-web-devicons"

  use({
	  "glepnir/galaxyline.nvim",
	  -- your statusline
	  config = function()
		  require("pikinesquik.plugins.galaxyline_config")
	  end,
 	  -- some optional icons
	  requires = { "kyazdani42/nvim-web-devicons", opt = true }
  })

  use {
	  'numToStr/Comment.nvim',
	  config = function()
		  require('pikinesquik.plugins.commentnvim_config')
	  end
  }

  use {
	  "ray-x/lsp_signature.nvim",
	  -- config = function()
		 --  require("pikinesquik.plugins.lsp_signature")
	  -- end
  }
end)
