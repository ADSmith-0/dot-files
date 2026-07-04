local oil = require("oil")
oil.setup({
  view_options = {
    show_hidden = false,
  },
  float = {
    padding = 2,
    max_width = 0,
    max_height = 0,
    border = "rounded",
    preview_split = "right",
  },
  confirmation = {
    border = "rounded",
  },
})

vim.keymap.set("n", "<leader>e", oil.toggle_float, { desc = "Open file explorer" })
