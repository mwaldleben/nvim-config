local dap_status_ok, dap = pcall(require, "dap")
if not dap_status_ok then
  print("Error in require for dap")
end

local dap_ui_status_ok, dapui = pcall(require, "dapui")
if not dap_ui_status_ok then
  print("Error in require for dapui")
end

local dap_install_status_ok, dap_install = pcall(require, "mason-nvim-dap")
if not dap_install_status_ok then
  print("Error in require for mason-nvim-dap")
end

local servers = {
	"python",
	"bash",
}

dap_install.setup({
	ensure_installed = servers,
})

-- dap.adapters.python = {
--   type = 'executable';
--   command = os.getenv('HOME') .. '/waldleben/config/venv/bin/python';
--   args = { '-m', 'debugpy.adapter' };
--
--
-- }
dap.adapters.python = {
	type = 'executable',
	command = 'debugpy-adapter',
}
dap.configurations.python = {
      {
        type = 'python';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
        pythonPath = function()
          return '/home/cfse2/waldleben/config/venv/bin/python'
        end;
      },
    }

dapui.setup({
	expand_lines = true,
	icons = { expanded = "", collapsed = "", circular = "" },
	mappings = {
		-- Use a table to apply multiple mappings
		expand = { "<CR>", "<2-LeftMouse>" },
		open = "o",
		remove = "d",
		edit = "e",
		repl = "r",
		toggle = "t",
	},
	layouts = {
		{
			elements = {
				{ id = "scopes", size = 0.33 },
				{ id = "breakpoints", size = 0.17 },
				{ id = "stacks", size = 0.25 },
				{ id = "watches", size = 0.25 },
			},
			size = 0.33,
			position = "right",
		},
		{
			elements = {
				{ id = "repl", size = 0.45 },
				{ id = "console", size = 0.55 },
			},
			size = 0.27,
			position = "bottom",
		},
	},
	floating = {
		max_height = 0.9,
		max_width = 0.5,
		border = vim.g.border_chars,
		mappings = {
			close = { "q", "<Esc>" },
		},
	},
})

vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end
