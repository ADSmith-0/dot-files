require('telescope').setup {
  defaults = {
    color_devicons = true,
    sorting_strategy = "ascending",
    path_displays = "smart",
    layout_strategy = "horizontal",
    layout_config = {
      prompt_position = "top",
      preview_width = 0.70,
      height = 0.99,
      width = 0.99,
    },
    file_ignore_patterns = {
      ".git",
      "node_modules"
    },
  }
}
require('telescope').load_extension('fzf')
