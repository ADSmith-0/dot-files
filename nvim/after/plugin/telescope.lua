local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", function() builtin.fd({ hidden = true, no_ignore = true, no_ignore_parent = true }) end,
  { desc = "Find file" })
vim.keymap.set("n", "<leader>fw", builtin.live_grep, { desc = "Find word" })
vim.keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "Find word under cursor" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Search open buffers" })
vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Search git files" })
vim.keymap.set("n", "<leader>;", builtin.resume, { desc = "Open last search" })
