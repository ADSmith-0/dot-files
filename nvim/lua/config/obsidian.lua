require("obsidian").setup({
	legacy_commands = false,
	picker = {
		name = "telescope.nvim",
	},
	workspaces = {
		{
			name = "main",
			path = "~/Documents/notes",
		},
	},
})

vim.keymap.set("n", "<leader>b", "<cmd>Obsidian backlinks<CR>", { desc = "Obsidian Backlinks" })
