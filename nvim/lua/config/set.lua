vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.termguicolors = true

vim.o.winborder = "rounded"

-- auto-session
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

vim.opt.nu = true
vim.opt.relativenumber = true

-- Make sign column always visible (no CLS when signs appear/disappear)
vim.opt.signcolumn = "yes"

vim.opt.wrap = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
-- vim.g.undotree_WindowLayout = 2

vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Enable undercurl
vim.api.nvim_set_var("t_Cs", "\\e[4:3m")
vim.api.nvim_set_var("t_Ce", "\\e[4:0m")

-- Set tab width
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = false

vim.opt.scrolloff = 4

-- if vim.opt.diff:get() then
--  vim.o.diffopt = 'internal,filler,closeoff'
-- end
