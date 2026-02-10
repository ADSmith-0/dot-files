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

-- Buffer navigation
vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<A-w>", "<cmd>w<CR>", { desc = "Save current buffer" })
vim.keymap.set("n", "<A-x>", "<cmd>bd<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<A-l>", "<cmd>b#<CR>", { desc = "Go to last entered buffer" })
vim.keymap.set("n", "<A->>", "<cmd>BufferLineMoveNext<CR>", { desc = "Move buffer to the right" })
vim.keymap.set("n", "<A-<>", "<cmd>BufferLineMovePrev<CR>", { desc = "Move buffer to the left" })
vim.keymap.set("n", "<A-<>", "<cmd>BufferLineMovePrev<CR>", { desc = "Move buffer to the left" })

-- Add new line without exiting normal mode
vim.keymap.set("n", "<Enter>", "i<Enter><Esc>")
vim.keymap.set("n", "<C-Enter>", "o<Esc>")

-- Tmux sessionzier
vim.keymap.set("n", "<A-p>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Change tmux project" })

-- Refresh
vim.keymap.set("n", "<leader>ls", "<cmd>source ~/.config/nvim/after/plugin/luasnip.lua<CR>", { desc = "Reload snippets" })
vim.keymap.set("n", "<leader>rr", "<cmd>restart<CR>", { desc = "Reload Neovim" })

-- Open config menus
vim.keymap.set("n", "<leader>la", "<cmd>Lazy<CR>", { silent = true, desc = "Open Lazy" })
vim.keymap.set("n", "<leader>cm", "<cmd>Mason<CR>", { silent = true, desc = "Open mason" })

-- TODO Comments
vim.keymap.set("n", "<leader>tc", "<cmd>TodoTelescope<CR>", { silent = true, desc = "Search TODO comments" })

-- Markdown previewer
vim.keymap.set("n", "<leader>mdo", "<cmd>MarkdownPreview<CR>", { silent = true, desc = "Open preview for Markdown file" })
vim.keymap.set("n", "<leader>mdc", "<cmd>MarkdownPreviewStop<CR>", { silent = true, desc = "Close preview Markdown file" })

-- Mergetool
vim.keymap.set("n", "gh", "<cmd>diffget 1<CR>", { silent = true, desc = "Pick left file in mergetool" })
vim.keymap.set("n", "gl", "<cmd>diffget 3<CR>", { silent = true, desc = "Pick right file in mergetool" })
vim.keymap.set("n", "g0", "<cmd>diffget 2<CR>", { silent = true, desc = "Pick middle file in mergetool" })

-- Git conflict
vim.keymap.set("n", "gq", "<cmd>GitConflictListQf<CR><cmd>ccl<CR>", { silent = true, desc = "Load merge conflicts into quickfix list" })

-- Twilight
vim.keymap.set("n", "dim", "<cmd>Twilight<CR>", { silent = true, desc = "Toggle twilight" })
