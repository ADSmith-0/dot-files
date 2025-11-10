local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>f",
  function() builtin.fd({ hidden = true, no_ignore = true, no_ignore_parent = true, previewer = false, layout_config = { height = 0.75, width = 0.65 } }) end,
  { desc = "Find file" })
vim.keymap.set("n", "<leader>w", builtin.live_grep, { desc = "Find word" })
vim.keymap.set("n", "<leader>*", builtin.grep_string, { desc = "Find word under cursor" })
vim.keymap.set("v", "<leader>*", builtin.grep_string, { desc = "Find selection in files" })
vim.keymap.set("n", "<leader><leader>",
  function() builtin.buffers({ hidden = true, no_ignore = true, no_ignore_parent = true, previewer = false, layout_config = { height = 0.75, width = 0.65 } }) end,
  { desc = "Search open buffers" })
vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Search git files" })
vim.keymap.set("n", "<leader>;", builtin.resume, { desc = "Open last search" })
