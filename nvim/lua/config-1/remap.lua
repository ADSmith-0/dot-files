vim.g.mapleader = " "
vim.keymap.set("x", "<C-_>", "gc", { remap = true })
vim.keymap.set("n", "<C-_>", "gcc", { remap = true })

-- Move code in visual mode with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep cursor in the center of the screen when jumping around
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+yy")
vim.keymap.set("v", "<leader>y", "\"+y")

-- Paste from clipboard
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")

-- Delete without copying to clipboard
vim.keymap.set("n", "<leader>d", "\"_dd")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Remap Ctrl+C to Esc as they are similar but not the exact same
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Toggle quotes in visual mode
vim.keymap.set("v", "<leader>\"", "\"gc\"\"<Esc><Left>\"gp")
vim.keymap.set("v", "<leader>{", "\"gc{}<Esc><Left>\"gp")
vim.keymap.set("v", "<leader>(", "\"gc()<Esc><Left>\"gp")
vim.keymap.set("v", "<leader>[", "\"gc[]<Esc><Left>\"gp")

-- Go to last entered buffer
vim.keymap.set("n", "<A-l>", "<cmd>:b#<CR>", { desc = "Go to last entered buffer" })

-- Add new line without exiting normal mode
vim.keymap.set("n", "<Enter>", "i<Enter><Esc>")
vim.keymap.set("n", "<leader><Enter>", "o<Esc>")

-- Tmux sessionzier
vim.keymap.set("n", "<leader>F", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Change tmux project" })

-- Refresh snippets
vim.keymap.set("n", "<leader>sn", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>", { desc = "Reload snippets" })

-- Open config menus
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<CR>", { silent = true, desc = "Open Lazy" })
vim.keymap.set("n", "<leader>cm", "<cmd>Mason<CR>", { silent = true, desc = "Open mason" })

-- TODO Comments
vim.keymap.set("n", "<leader>tc", "<cmd>TodoTelescope<CR>", { silent = true, desc = "Search TODO comments" })
