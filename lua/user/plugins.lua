  local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- packer with popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float()
		end,
	},
})

return packer.startup(function(use)
 	-- general
	use "wbthomason/packer.nvim"
	use "nvim-lua/plenary.nvim"
	use "kyazdani42/nvim-web-devicons"

 	-- autopairs
	use "windwp/nvim-autopairs"

 	-- bufferline
	use "akinsho/bufferline.nvim"

	-- colorscheme
	use "folke/tokyonight.nvim"

  -- comment
  use "numToStr/Comment.nvim"

  -- copilot
  use "zbirenbaum/copilot.lua"

	-- cmp plugins
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"
  use "zbirenbaum/copilot-cmp"

  -- gitsigns
  use "lewis6991/gitsigns.nvim"

  -- indent-blankline
  use "lukas-reineke/indent-blankline.nvim"

  -- lualine
  use "nvim-lualine/lualine.nvim"

  -- lsp
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "neovim/nvim-lspconfig"
  use "jose-elias-alvarez/null-ls.nvim"

 	-- nvimtree
	use "kyazdani42/nvim-tree.lua"

  -- nvim-dap
  use "mfussenegger/nvim-dap"
  use "jayp0521/mason-nvim-dap.nvim"
  use "rcarriga/nvim-dap-ui"

  -- project
  use "ahmedkhalf/project.nvim"

	-- snippets
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"

  -- smart-splits
  use "mrjones2014/smart-splits.nvim"

	-- telescope
	use "nvim-telescope/telescope.nvim"

  -- tpope plugins
  use "tpope/vim-fugitive"
  use "tpope/vim-repeat"
  use "tpope/vim-surround"
  use "tpope/vim-unimpaired"

  -- toggleterm
  use "akinsho/toggleterm.nvim"

	-- treesitter
	use "nvim-treesitter/nvim-treesitter"

  -- trouble
  use "folke/trouble.nvim"

  -- which-key
  use "folke/which-key.nvim"

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
