-- Auto format on save
vim.cmd([[autocmd BufWritePost * lua vim.lsp.buf.format()]])
