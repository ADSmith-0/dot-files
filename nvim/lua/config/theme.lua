-- onedark
-- require('onedark').setup {
--   style = 'darker'
-- }
-- require('onedark').load()

-- ondarkpro
require("onedarkpro").setup({
	colors = {
		black = "#16181A",
		red = "#dd4960",
		green = "#69bf50",
		yellow = "#d5b06b",
		blue = "#519fde",
		magenta = "#c44ecd",
		cyan = "#2ba9b2",
		white = "#989fac",
	},
	options = {
		transparency = true,
	},
})
vim.cmd.colorscheme("onedark_vivid")

-- sonokai
-- vim.cmd.colorscheme("sonokai")

-- ayu
-- require("ayu").setup({
--   mirage = true
-- })
-- require("ayu").colorscheme()
