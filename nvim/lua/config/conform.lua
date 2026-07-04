require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt", lsp_format = "fallback" },
		javascript = { "biome", "prettierd", "prettier", stop_after_first = true },
	},
})
