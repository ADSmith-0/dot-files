local rainbow_delimiters = require 'rainbow-delimiters'

vim.cmd('highlight RainbowDelimiterViolet guifg=#d55dfe')
vim.cmd('highlight RainbowDelimiterBlue guifg=#61afef')
vim.cmd('highlight RainbowDelimiterYellow guifg=#e5c07b')

vim.g.rainbow_delimiters = {
  strategy = {
    [''] = rainbow_delimiters.strategy['global'],
  },
  query = {
    [''] = 'rainbow-delimiters',
    lua = 'rainbow-blocks',
    tsx = 'rainbow-parens',
  },
  highlight = {
    'RainbowDelimiterViolet',
    'RainbowDelimiterBlue',
    'RainbowDelimiterYellow',
  },
  blacklist = { 'html', 'jsx', 'svelte', 'tsx', 'svg' }
}
