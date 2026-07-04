vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			}
		}
	}
})

require("mason-lspconfig").setup({
  ensure_installed = { "ts_ls", "emmet_language_server" },
  handlers = {
    vim.lsp.default_setup,
  }
})

