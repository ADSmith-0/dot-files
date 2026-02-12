-- Auto format on save
-- vim.cmd([[autocmd BufWritePost * lua vim.lsp.buf.format()]])
vim.api.nvim_create_autocmd("InsertEnter", {
  desc = "Disable relative line numbers",
  callback = function()
    vim.opt.relativenumber = false
  end
})
vim.api.nvim_create_autocmd("InsertLeave", {
  desc = "Enable relative line numbers",
  callback = function()
    vim.opt.relativenumber = true
  end
})
