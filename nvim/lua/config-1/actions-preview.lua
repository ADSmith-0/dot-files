require("actions-preview").setup({
  diff = {
    algorithm = "patience",
    ignore_whitespace = true,
  },
  telescope = {
    sorting_strategy = "ascending",
    layout_strategy = "bottom_pane",
    layout_config = {
      width = 0.7,
      height = 0.4,
      bottom_pane = {
        preview_cutoff = 20,
        preview_height = function(_, _, max_lines)
          return max_lines - 15
        end,
      }
    },
  },
})
