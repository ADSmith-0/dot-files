return {
	{ "xiyaowong/transparent.nvim" },
	{ "rmagatti/auto-session", lazy = false, opts = {} },
	{ "nvim-treesitter/nvim-treesitter", lazy = false, build = ":TSUpdate", branch = "master" },
	{ "akinsho/bufferline.nvim", version = "*", lazy = true },
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
		"saghen/blink.cmp",
		-- dependencies = { "rafamadriz/friendly-snippets" },
		version = "1.*",
		opts = {
			keymap = {
				preset = "default",
				["<Tab>"] = { "select_and_accept", "fallback" },
			},
			completion = {
				documentation = {
					auto_show = true,
				},
				list = {
					max_items = 20,
					selection = {
						auto_insert = false,
					},
				},
			},
			sources = {
				providers = {
					path = {
						opts = {
							max_entries = 500,
						},
					},
				},
			},
			snippets = { preset = "luasnip" },
			cmdline = {
				keymap = {
					preset = "default",
					["<Tab>"] = { "select_accept_and_enter", "show" },
					["<S-Tab>"] = { "select_accept_and_enter", "show" },
					["<C-n>"] = { "select_next", "show", "fallback" },
				},
				completion = {
					menu = {
						auto_show = function()
							return vim.fn.getcmdtype() == "/" or vim.fn.getcmdtype() == "?"
							-- enable for inputs as well, with:
							-- or vim.fn.getcmdtype() == '@'
						end,
					},
				},
			},
		},
		opts_extend = { "sources.default" },
	},
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
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
	{ "norcalli/nvim-colorizer.lua", lazy = true },
	{
		"aznhe21/actions-preview.nvim",
		commit = "2b604b2e8e662c03b716436f6ffebcb19663e66a",
		lazy = true,
		config = function()
			vim.keymap.set({ "v", "n" }, "<leader>ca", require("actions-preview").code_actions)
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		lazy = true,
	},
	{ "hiphish/rainbow-delimiters.nvim", lazy = true },
	-- { "mbbill/undotree", lazy = true },
	{ "akinsho/git-conflict.nvim", version = "*", config = true },
	{ "nvim-mini/mini.indentscope", version = "*", lazy = true },
	{
		"folke/trouble.nvim",
		lazy = true,
		opts = {},
		cmd = "Trouble",
		keys = {
			{
				"<leader>x",
				"<cmd>Trouble diagnostics toggle filter.buf=0 win.position=right<cr>",
				desc = "Buffer Diagnostics (Trouble)",
			},
			{
				"<leader>X",
				"<cmd>Trouble diagnostics toggle win.position=right<cr>",
				desc = "Diagnostics (Trouble)",
			},
			-- {
			-- 	"<leader>cs",
			-- 	"<cmd>Trouble symbols toggle focus=false<cr>",
			-- 	desc = "Symbols (Trouble)",
			-- },
			-- {
			-- 	"<leader>cl",
			-- 	"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			-- 	desc = "LSP Definitions / references / ... (Trouble)",
			-- },
			-- {
			-- 	"<leader>xL",
			-- 	"<cmd>Trouble loclist toggle<cr>",
			-- 	desc = "Location List (Trouble)",
			-- },
			-- {
			-- 	"<leader>xQ",
			-- 	"<cmd>Trouble qflist toggle<cr>",
			-- 	desc = "Quickfix List (Trouble)",
			-- },
		},
	},
}
