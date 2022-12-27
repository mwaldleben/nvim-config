local options = {
  -- only non default settings are set here
  autoindent = true,                       -- autoindent text 
  clipboard = "unnamedplus",               -- access system clipboard 
  completeopt = { "menuone", "noselect" }, -- completion options for cmp
  cursorline = true,                       -- highlight the current line
  expandtab = true,                        -- tabs are converted to spaces 
  mouse = "a",                             -- mouse enabled in all modes
  number = true,                           -- numbered lines enabled
  pumheight = 10,                          -- hight of pop up menu 
  relativenumber = true,                   -- show numbered lines relative to current one
  scrolloff = 8,                           -- how many lines to keep above/below cursor when scrolling
  shell = "/bin/zsh",                      -- shell to use
  shiftwidth = 2,                          -- number of spaces for autoindent 
  showmode = false,                        -- don't show modes anymore
  sidescrolloff = 0,                       -- how many lines to keep left/right when sideways scrolling
  signcolumn = "yes",                      -- always show the signcolum 
  smartindent = true,                      -- auto indenting  
  splitbelow = true,                       -- horizontal splits below window
  splitright = true,                       -- vertical splits to the right of window 
  swapfile = false,                        -- no swap files for buffer
  tabstop = 2,                             -- as how many tabs is a tab displayed
  termguicolors = true,                    -- use gui colors in terminal 
  timeoutlen = 500,                         -- time to wait for maped sequence
  updatetime = 300,                        -- completion time 
  undofile = true,                         -- create undofiles for saved buffers
  wrap = false,                            -- display long lines as just one line 
  writebackup = false,                     -- not allowed to edit if another program has opened the file
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
