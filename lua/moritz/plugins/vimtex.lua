return {
	"lervag/vimtex",
	config = function()
		vim.g.vimtex_view_method = "zathura"
		vim.g.vimtex_quickfix_autoclose_after_keystrokes = 4
		vim.g.vimtex_quickfix_open_on_warning = 0
		vim.g.vimtex_syntax_enabled = 0
	end,
	opts = {},
}
