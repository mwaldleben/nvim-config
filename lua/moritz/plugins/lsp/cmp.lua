return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		{ "L3MON4D3/LuaSnip" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "hrsh7th/cmp-cmdline" },
	},
	config = function()
		local lsp_zero = require("lsp-zero")
		lsp_zero.extend_cmp()

		local cmp = require("cmp")
		local cmp_action = lsp_zero.cmp_action()

		cmp.setup({
			sources = {
				{ name = "nvim_lua" },
		    { name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			},
			formatting = lsp_zero.cmp_format(),
			mapping = cmp.mapping.preset.insert({
				["<C-n>"] = cmp.mapping.select_next_item(),
				["<C-p>"] = cmp.mapping.select_prev_item(),
				["<C-u>"] = cmp.mapping.scroll_docs(-4),
				["<C-d>"] = cmp.mapping.scroll_docs(4),
				["<C-e>"] = cmp.mapping.abort(),
				["<C-f>"] = cmp_action.luasnip_jump_forward(),
				["<C-b>"] = cmp_action.luasnip_jump_backward(),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Replace,
					select = true,
				}),
			}),
		})
	end,
}
