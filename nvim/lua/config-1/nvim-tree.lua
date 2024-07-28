-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()

-- Enable for colour change on highlight
-- local color = require("onedarkpro.helpers")
-- local colors = color.get_colors()
-- vim.cmd('highlight NvimTreeCursorLine guifg=' .. colors.purple)
