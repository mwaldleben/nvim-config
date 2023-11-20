local opts = { noremap=true, silent=true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- normal mode (=n) --
-- turn off highlight search
keymap("n", "<leader><esc>", "<cmd>nohls<cr>", opts)

-- search and replace
keymap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>//g<Left><Left>", {noremap=true} )

-- insert mode (=i)

-- visual mode (=v) --
--  stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- visual block mode (=x) --

-- plugins --
-- cokeline
keymap("n", "<S-h>", "<Plug>(cokeline-focus-prev)", opts)
keymap("n", "<S-l>", "<Plug>(cokeline-focus-next)", opts)
keymap("n", "<Leader>p", "<Plug>(cokeline-switch-prev)", opts)
keymap("n", "<Leader>n", "<Plug>(cokeline-switch-next)", opts)

for i = 1, 9 do
  keymap(
    "n",
    ("<F%s>"):format(i),
    ("<Plug>(cokeline-focus-%s)"):format(i),
    opts 
  )
  keymap(
    "n",
    ("<Leader>%s"):format(i),
    ("<Plug>(cokeline-switch-%s)"):format(i),
    opts
  )
end

-- git
keymap("n", "<leader>gg", "<cmd>Git<cr>", opts)
keymap("n", "<leader>gd", "<cmd>Git diff<cr>", opts)
keymap("n", "<leader>gc", "<cmd>Git commit<cr>", opts)
keymap("n", "<leader>gp", "<cmd>Git push<cr>", opts)

-- nvim-tree
keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)

-- nvim-dap
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- smart-splits
keymap("n", '<A-h>', "<cmd>SmartResizeLeft<cr>", opts)
keymap("n", '<A-j>', "<cmd>SmartResizeDown<cr>", opts)
keymap("n", '<A-k>', "<cmd>SmartResizeUp<cr>", opts)
keymap("n", '<A-l>', "<cmd>SmartResizeRight<cr>", opts)

keymap("n", '<C-h>', "<cmd>SmartCursorMoveLeft<cr>", opts)
keymap("n", '<C-j>', "<cmd>SmartCursorMoveDown<cr>", opts)
keymap("n", '<C-k>', "<cmd>SmartCursorMoveUp<cr>", opts)
keymap("n", '<C-l>', "<cmd>SmartCursorMoveRight<cr>", opts)

-- telescope
keymap("n", "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false, hidden = true}))<cr>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope find_files hidden=true<cr>", opts)
keymap("n", "<leader>fp", "<cmd>Telescope projects<cr>", opts)

-- toggleterm
keymap("n", "<leader>x", "<cmd>let buf=bufnr('%') <bar> exec 'bufdo update' <bar> exec 'b' buf <bar> TermExec cmd='make run'<cr>", opts)
keymap("n", "<leader>xp", "<cmd>let buf=bufnr('%') <bar> exec 'bufdo update' <bar> exec 'b' buf <bar> TermExec cmd='python main.py'<cr>", opts)

-- trouble
keymap("n", "<leader>tt", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>", opts)
keymap("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>", opts)
keymap("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>", opts)
keymap("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", opts)
