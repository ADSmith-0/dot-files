local oil = require("oil")
oil.setup({
	view_options = {
		show_hidden = true,
	},
	float = {
		padding = 2,
		max_width = 0.8,
		max_height = 0.8,
		border = "rounded",
		preview_split = "right",
	},
	confirmation = {
		border = "rounded",
	},
})

vim.keymap.set("n", "<leader>e", oil.toggle_float, { desc = "Open file explorer" })
