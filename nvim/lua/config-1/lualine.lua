require("lualine").setup({
  options = {
    component_separators = { left = '|', right = '|' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' } } },
    lualine_b = {},
    lualine_c = { { 'diff', icon = { '', color = { fg = 'lightgreen' } }, separator = { right = '' } }, 'diagnostics' },
    lualine_x = { 'location', 'progress', 'lsp_status', 'filetype', 'encoding', { 'fileformat', separator = { right = '' } }, },
    lualine_y = {},
    lualine_z = {}
  },
})
