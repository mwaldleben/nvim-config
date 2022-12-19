local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  print("Error in require for lualine")
end

lualine.setup({
  options = {
    component_separators = { left="", right="" },
    section_separators = { left="", right="" },
    disabled_filetypes = { "NvimTree" }
  }
})

