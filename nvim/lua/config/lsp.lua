vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

require("mason-lspconfig").setup({
	ensure_installed = { "ts_ls", "emmet_language_server" },
	handlers = {
		vim.lsp.default_setup,
	},
})

vim.keymap.set("n", "<leader>rs", vim.lsp.buf.rename, { silent = true, desc = "Rename symbol" })
vim.keymap.set("n", "<C-K>", vim.diagnostic.open_float, { desc = "Open float" })
