require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "lua", "rust", "javascript", "css", "html", "svelte" },
	auto_install = true,
	highlight = { enable = true },
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "<filetype>" },
	callback = function()
		vim.treesitter.start()
	end,
})
