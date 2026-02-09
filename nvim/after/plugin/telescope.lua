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
vim.keymap.set("n", "<leader>;", builtin.resume, { desc = "Open last search" })
vim.keymap.set("n", "<leader>gx", builtin.git_branches, { desc = "Switch git branch" })
vim.keymap.set("n", "<leader>gl", builtin.git_commits, { desc = "Show git commit history" })
vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Get git status" })
vim.keymap.set("n", "<leader>/", function() builtin.current_buffer_fuzzy_find({ skip_empty_lines = true }) end,
  { desc = "Search buffer" })
