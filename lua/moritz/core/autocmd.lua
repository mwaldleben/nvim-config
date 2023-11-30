vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "qf", "help", "fugitive" },
  callback = function()
    vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR> 
      set nobuflisted 
    ]])
  end,
})

vim.cmd("autocmd FileType qf wincmd J")
