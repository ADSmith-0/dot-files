-- Auto format on save
-- vim.cmd([[autocmd BufWritePost * lua vim.lsp.buf.format()]])

-- Change to absolute numbers when in insert mode and change to relative numbers in normal mode
-- vim.api.nvim_create_autocmd("InsertEnter", {
--   desc = "Disable relative line numbers",
--   callback = function(opts)
--     if vim.bo[opts.buf].filetype == 'TelescopePrompt' or vim.bo[opts.buf].filetype == 'TelescopeResults' then
--       return
--     end
--     vim.opt.relativenumber = false
--   end
-- })
-- vim.api.nvim_create_autocmd("InsertLeave", {
--   desc = "Enable relative line numbers",
--   callback = function(opts)
--     if vim.bo[opts.buf].filetype == 'TelescopePrompt' or vim.bo[opts.buf].filetype == 'TelescopeResults' then
--       return
--     end
--     vim.opt.relativenumber = true
--   end
-- })

-- Trigger git conflict refresh on buffer attach
vim.api.nvim_create_autocmd("BufEnter", {
  desc = "Enable relative line numbers",
  callback = function(opts)
    if vim.bo[opts.buf].filetype == 'TelescopePrompt' or vim.bo[opts.buf].filetype == 'TelescopeResults' then
      return
    end
    vim.cmd("GitConflictRefresh")
  end
})
