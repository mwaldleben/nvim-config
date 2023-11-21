local lsp = require("moritz.lsp.lsp-zero")

local servers = {
	"pyright",
	"lua_ls",
	"julials",
	"bashls",
	"astro",
	"tailwindcss",
}

require("mason").setup({
	PATH = "append",
})
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
	handlers = {
		lsp.default_setup,
	},
})
