local options = {
  -- Only non default settings are set here
  autoindent = true, -- autoindent text
  clipboard = 'unnamedplus', -- access system clipboard
  completeopt = { 'menuone', 'noselect' }, -- completion options for cmp
  cursorline = true, -- highlight the current line
  expandtab = true, -- tabs are converted to spaces
  fixendofline = false, -- preserve missing end of line character
  mouse = 'a', -- mouse enabled in all modes
  number = true, -- numbered lines enabled
  pumheight = 10, -- hight of pop up menu
  relativenumber = true, -- show numbered lines relative to current one
  scrolloff = 8, -- how many lines to keep above/below cursor when scrolling
  shell = 'zsh', -- shell to use
  shiftwidth = 2, -- number of spaces for autoindent
  showmode = false, -- don't show modes anymore
  sidescrolloff = 0, -- how many lines to keep left/right when sideways scrolling
  signcolumn = 'yes', -- always show the signcolum
  smartindent = true, -- auto indenting
  splitbelow = true, -- horizontal splits below window
  splitright = true, -- vertical splits to the right of window
  swapfile = false, -- no swap files for buffer
  tabstop = 2, -- as how many tabs is a tab displayed
  termguicolors = true, -- use gui colors in terminal
  timeout = true, -- set timeout
  timeoutlen = 300, -- time to wait for maped sequence
  updatetime = 300, -- completion time
  undofile = true, -- create undofiles for saved buffers
  wrap = false, -- display long lines as just one line
  writebackup = false, -- not allowed to edit if another program has opened the file
}

for option, value in pairs(options) do
  vim.opt[option] = value
end

-- Set shell to powershell if on Windows
-- See ":help shell-powershell"
if vim.fn.has('win32') == 1 then
  local powershell_options = {
    shell = vim.fn.executable('pwsh') == 1 and 'pwsh' or 'powershell',
    shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;',
    shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait',
    shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode',
    shellquote = '',
    shellxquote = '',
  }

  for option, value in pairs(powershell_options) do
    vim.opt[option] = value
  end
end
