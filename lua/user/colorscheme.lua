-- current colorscheme
vim.cmd [[
try
  colorscheme tokyonight-storm
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
