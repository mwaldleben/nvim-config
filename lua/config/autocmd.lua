vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "qf", "help" },
  callback = function()
    vim.cmd([[
      nnoremap <silent> <buffer> q :close<CR> 
      set nobuflisted 
    ]])
  end,
})

vim.cmd("autocmd FileType qf wincmd J")

vim.cmd("autocmd FileType latex,tex,markdown,md,mail setlocal spell spelllang=de_ch,en_us,fr")
