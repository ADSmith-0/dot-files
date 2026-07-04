return {
	{ "rmagatti/auto-session", lazy = false, opts = {}, },
	{ "nvim-treesitter/nvim-treesitter", lazy = false, build = ":TSUpdate", branch="master" },
	{ "romgrk/barbar.nvim", version = "^1.0.0", lazy=true, init = function() vim.g.barbar_auto_setup = false end, },
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "lewis6991/gitsigns.nvim", lazy = true },
	{ "stevearc/oil.nvim", opts = {}, lazy = false, },
	{ "nvim-mini/mini.icons" },
	{
	    'nvim-telescope/telescope.nvim', version = '*',
	    dependencies = {
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	    },
	    branch = "stable",
	    lazy = true
	},
	{ "folke/todo-comments.nvim", opts = {} },
	{ "nvim-lua/plenary.nvim", lazy = true },
	{ "olimorris/onedarkpro.nvim", lazy = true }
} 
