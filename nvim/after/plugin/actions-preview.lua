local actions_preview = require("actions-preview")
vim.keymap.set({ "v", "n" }, "<leader>ca", actions_preview.code_actions, { desc = "Open code actions" })
