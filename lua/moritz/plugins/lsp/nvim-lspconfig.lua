return {
	"neovim/nvim-lspconfig",
	cmd = { "LspInfo", "LspInstall", "LspStart" },
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "williamboman/mason-lspconfig.nvim" },
	},
	config = function()
		local lsp_zero = require("lsp-zero")
		lsp_zero.extend_lspconfig()

		lsp_zero.on_attach(function(client, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
		end)

		lsp_zero.set_sign_icons({
			error = "",
			warn = "",
			hint = "",
			inf = "",
		})

		lsp_zero.format_mapping("gq", {
			format_opts = {
				async = false,
				timeout_ms = 10000,
			},
			servers = {
				["null-ls"] = { "python", "lua" },
			},
		})

		local servers = {
			"pyright",
			"lua_ls",
			"julials",
			"bashls",
			"astro",
			"tailwindcss",
		}

		require("lspconfig").tsserver.setup({
			single_file_support = false,
			on_attach = function(client, bufnr)
				print("hello tsserver")
			end,
		})

		require("mason-lspconfig").setup({
			ensure_installed = servers,
			automatic_installation = true,
			handlers = {
				lsp_zero.default_setup,
				lua_ls = function()
					require("lspconfig").lua_ls.setup({
						settings = {
							Lua = {
								diagnostics = {
									globals = { "vim" },
								},
								workspace = {
									library = {
										[vim.fn.expand("$VIMRUNTIME/lua")] = true,
									},
								},
							},
						},
					})
				end,
			},
		})
	end,
}
