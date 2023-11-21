return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			ensure_installed = { "lua", "c", "fortran", "latex", "make", "html", "css", "astro", "typescript", "org" },
			ignore_install = { "" },
			highlight = {
				enable = true,
			},
		})
	end,
}
