local cmp = require("blink.cmp")

cmp.setup({
	keymap = {
		preset = "default",
		["<Tab>"] = { "select_and_accept" },
	},
	completion = { documentation = { auto_show = true } },
	snippets = { preset = "luasnip" },
})

vim.diagnostic.config({
	virtual_text = true,
	severity_sort = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = "",
			[vim.diagnostic.severity.INFO] = "",
		},
	},
})
