vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.lsp.config("rust-analyzer", {
	settings = {
		procMacro = { enable = true },
		checkOnSave = {
			command = "clippy",       -- clippy is faster than cargo check for many cases
			extraArgs = { "--no-deps" }, -- don't re-check dependencies
		},
		-- diagnostics = {
		-- 	disabled = { "unresolved-import" }, -- noisy + expensive for workspaces
		-- },
		cargo = {
			targetDir = true, -- reuse the target dir, avoids duplicate compilation
		},
	}
})

require("mason-lspconfig").setup({
	ensure_installed = { "ts_ls", "emmet_language_server" },
	handlers = {
		vim.lsp.default_setup,
	},
})

vim.keymap.set("n", "<leader>rs", vim.lsp.buf.rename, { silent = true, desc = "Rename symbol" })
vim.keymap.set("n", "<C-K>", vim.diagnostic.open_float, { desc = "Open float" })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Jump to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Jump to declaration" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Show implementations" })
vim.keymap.set("n", "go", vim.lsp.buf.type_definition, { desc = "Get type definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find references for symbol" })
vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, { desc = "Signature help" })
