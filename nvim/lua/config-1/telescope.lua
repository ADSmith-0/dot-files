require('telescope').setup {
  defaults = {
    color_devicons = true,
    sorting_strategy = "ascending",
    path_display = { "smart" },
    layout_strategy = "horizontal",
    prompt_prefix = " 🔍 ",
    selection_caret = "▋  ",
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
