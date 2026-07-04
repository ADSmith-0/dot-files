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
	{
	  "christoomey/vim-tmux-navigator",
	  cmd = {
	    "TmuxNavigateLeft",
	    "TmuxNavigateDown",
	    "TmuxNavigateUp",
	    "TmuxNavigateRight",
	    "TmuxNavigatePrevious",
	    "TmuxNavigatorProcessList",
	  },
	  keys = {
	    { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
	    { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
	    { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
	    { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
	    { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
	  },
	  lazy = true
	},
	{ "olimorris/onedarkpro.nvim", lazy = true }
} 
