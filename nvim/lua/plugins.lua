return {
	 {
	  "rmagatti/auto-session",
	  lazy = false,

	  ---enables autocomplete for opts
	  ---@module "auto-session"
	  ---@type AutoSession.Config
	  opts = {},
	},
	{ "nvim-treesitter/nvim-treesitter", lazy = false, build = ":TSUpdate", branch="master" },
	{
	  'stevearc/oil.nvim',
	  ---@module 'oil'
	  ---@type oil.SetupOpts
	  opts = {},
	  -- Optional dependencies
	  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	  lazy = false,
	},
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
