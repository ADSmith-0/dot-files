-- Make Oil UI the same colour as nvim background
vim.cmd([[hi! link NormalFloat Normal]])
vim.cmd([[hi! link FloatBorder Normal]])

-- Make Telescope UI the same colour as nvim background
vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
