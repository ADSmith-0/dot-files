require("nvim-treesitter.configs").setup {
	ensure_installed = { "c", "lua", "rust", "javascript", "css", "html" },
	auto_install = true
}

vim.api.nvim_create_autocmd("FileType", {
	pattern = {"<filetype>"},
	callback = function() vim.treesitter.start() end,
})
