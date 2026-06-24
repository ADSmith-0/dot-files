vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.wrap = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.g.undotree_WindowLayout = 2

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 4

vim.opt.termguicolors = true

vim.o.winborder = 'rounded'

if vim.opt.diff:get() then
  vim.o.diffopt = 'internal,filler,closeoff'
end

vim.api.nvim_set_hl(0, "Normal", { bg = "none" });
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" });
