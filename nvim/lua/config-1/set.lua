vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 0
-- vim.opt.autoindent = true
-- vim.opt.smartindent = true
vim.opt.expandtab = true

vim.opt.wrap = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.termguicolors = true

vim.o.winborder = 'rounded'

if vim.opt.diff:get() then
  vim.o.diffopt = 'internal,filler,closeoff'
end
