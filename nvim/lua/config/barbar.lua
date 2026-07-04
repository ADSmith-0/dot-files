require("barbar").setup({
-- highlight_visible = true,

icons = {
	-- Configure the base icons on the bufferline.
	-- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
	buffer_index = false,
	buffer_number = false,
	button = '',
	-- Enables / disables diagnostic symbols
	diagnostics = {
		[vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
		[vim.diagnostic.severity.WARN] = {enabled = true},
		[vim.diagnostic.severity.INFO] = {enabled = true},
		[vim.diagnostic.severity.HINT] = {enabled = true},
	},
	gitsigns = {
		added = {enabled = true, icon = '+'},
		changed = {enabled = true, icon = '~'},
		deleted = {enabled = true, icon = '-'},
	},
}
})
