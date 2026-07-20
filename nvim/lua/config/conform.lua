require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt", lsp_format = "fallback" },
		javascript = { "biome", "prettier", stop_after_first = false },
		typescript = { "biome", "prettier", stop_after_first = false },
		svelte = { "biome", "prettier", stop_after_first = false },
	},
})
