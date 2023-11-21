-- install plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
	print("Error in require for lazy")
end

lazy.setup({
	-- general
	"wbthomason/packer.nvim",
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons",

	-- autopairs
	"windwp/nvim-autopairs",

	-- colorscheme
	"catppuccin/nvim",

	-- cokeline
	"willothy/nvim-cokeline",

	-- comment
	"numToStr/Comment.nvim",

	-- cmp plugins
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",

	-- gitsigns
	"lewis6991/gitsigns.nvim",

	-- indent-blankline
	"lukas-reineke/indent-blankline.nvim",

	-- julia-vim
	"JuliaEditorSupport/julia-vim",

	-- lualine
	"nvim-lualine/lualine.nvim",

	-- lsp
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	"neovim/nvim-lspconfig",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jay-babu/mason-null-ls.nvim",
	"nvimtools/none-ls.nvim",

	-- nvimtree
	"kyazdani42/nvim-tree.lua",

	-- orgmode
	"nvim-orgmode/orgmode",

	-- project
	"ahmedkhalf/project.nvim",

	-- snippets
	"L3MON4D3/LuaSnip",

	-- smart-splits
	"mrjones2014/smart-splits.nvim",

	-- telescope
	"nvim-telescope/telescope.nvim",

	-- transparent
	"xiyaowong/transparent.nvim",

	-- tpope plugins
	"tpope/vim-fugitive",
	"tpope/vim-repeat",
	"tpope/vim-surround",
	"tpope/vim-unimpaired",

	-- toggleterm
	"akinsho/toggleterm.nvim",

	-- treesitter
	"nvim-treesitter/nvim-treesitter",

	-- trouble
	"folke/trouble.nvim",

	-- vimtex
	"lervag/vimtex",

	-- which-key
	"folke/which-key.nvim",
})
