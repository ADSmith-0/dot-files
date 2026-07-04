return {
	{ "rmagatti/auto-session", lazy = false, opts = {} },
	{ "nvim-treesitter/nvim-treesitter", lazy = false, build = ":TSUpdate", branch = "master" },
	{
		"romgrk/barbar.nvim",
		version = "^1.0.0",
		lazy = true,
		init = function()
			vim.g.barbar_auto_setup = false
		end,
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{ "lewis6991/gitsigns.nvim", lazy = true },
	{ "stevearc/oil.nvim", opts = {}, lazy = false },
	{ "nvim-mini/mini.icons" },
	{
		"nvim-telescope/telescope.nvim",
		version = "^0.2.1",
		dependencies = {
			-- optional but recommended
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		lazy = true,
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
		lazy = true,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	{ "mason-org/mason.nvim", opts = {}, lazy = true },
	{ "neovim/nvim-lspconfig", lazy = true },
	{
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/nvim-cmp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		lazy = true,
	},
	{ "olimorris/onedarkpro.nvim", lazy = true },
	{ "stevearc/conform.nvim", opts = {} },
	{ "kylechui/nvim-surround", version = "^4.0.0", event = "VeryLazy", lazy = true },
	{ "nvim-lualine/lualine.nvim", lazy = true },
	{
		"folke/snacks.nvim",
		opts = {
			bigfile = {
				notify = true,
				size = 1.5 * 1024 * 1024,
				line_length = 1000,
			},
		},
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		lazy = true,
		opts = {
			delay = 500,
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		lazy = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
}
