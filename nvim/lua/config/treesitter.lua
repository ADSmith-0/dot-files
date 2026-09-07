require("nvim-treesitter.configs").setup({
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	ensure_installed = { "c", "lua", "rust", "javascript", "css", "html", "svelte", "markdown", "markdown_inline" },
	auto_install = true,
	highlight = { enable = true },
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "<filetype>" },
	callback = function()
		vim.treesitter.start()
	end,
})
