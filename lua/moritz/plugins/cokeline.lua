return {
	"willothy/nvim-cokeline",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"kyazdani42/nvim-web-devicons",
	},
	config = function()
		local get_hex = require("cokeline.hlgroups").get_hl_attr
		local cokeline = require("cokeline")

		cokeline.setup({
			default_hl = {
				fg = function(buffer)
					return buffer.is_focused and get_hex("Normal", "fg") or get_hex("Comment", "fg")
				end,
				bg = "NONE",
			},
			sidebar = {
				filetype = { "NvimTree" },
				components = {
					{
						text = function(buf)
							return buf.filetype
						end,
						fg = function()
							return get_hex("Normal", "fg")
						end,
						bg = function()
							return get_hex("NvimTreeNormal", "bg")
						end,
						bold = true,
					},
				},
			},
			components = {
				{
					text = function(buffer)
						return (buffer.index ~= 1) and "▏" or ""
					end,
					fg = function()
						return get_hex("Normal", "fg")
					end,
				},
				{
					text = function(buffer)
						return "    " .. buffer.devicon.icon
					end,
					fg = function(buffer)
						return buffer.devicon.color
					end,
				},
				{
					text = function(buffer)
						return buffer.filename .. "    "
					end,
					bold = function(buffer)
						return buffer.is_focused
					end,
				},
				{
					text = "󰖭",
					on_click = function(buffer)
						buffer:delete()
					end,
				},
				{
					text = "  ",
				},
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<S-h>", "<Plug>(cokeline-focus-prev)", { desc = "Focus previous buffer" })
		keymap.set("n", "<S-l>", "<Plug>(cokeline-focus-next)", { desc = "Focus next buffer" })
		keymap.set("n", "<Leader>p", "<Plug>(cokeline-switch-prev)", { desc = "Switch with previous buffer" })
		keymap.set("n", "<Leader>n", "<Plug>(cokeline-switch-next)", { desc = "Switch with next buffer" })

		for i = 1, 9 do
			keymap.set(
				"n",
				("<Leader>%s"):format(i),
				("<Plug>(cokeline-focus-%s)"):format(i),
				{ desc = ("Focus buffer %s"):format(i) }
			)
		end
	end,
}
