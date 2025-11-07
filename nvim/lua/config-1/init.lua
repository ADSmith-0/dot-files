-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config-1.remap")
require("config-1.set")
require("config-1.lazy")
local plugins = {
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  {
    "olimorris/onedarkpro.nvim",
    "navarasu/onedark.nvim",
    "Shatur/neovim-ayu",
    "sainnhe/sonokai",
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  {
    "NvChad/nvim-colorizer.lua"
  },
  {
    "numToStr/Comment.nvim",
    lazy = false,
  },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "VonHeikemen/lsp-zero.nvim",                branch = "v3.x" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/nvim-cmp" },
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    keys = function()
      return {}
    end,
    config = function()
      require("luasnip.loaders.from_lua").lazy_load()
    end
  }, -- Required
  { "saadparwaiz1/cmp_luasnip" },
  { "HiPhish/rainbow-delimiters.nvim" },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup {
        --config
      }
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } }
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    main = "ibl",
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  { "lewis6991/gitsigns.nvim" },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  { "christoomey/vim-tmux-navigator" },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  {
    "echasnovski/mini.indentscope",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    event = { "BufReadPost", "BufWritePost", "BufNewFile" },
    opts = {
      symbol = "│",
      -- symbol = '╎',
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          "alpha",
          "dashboard",
          "NvimTree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
  {
    "echasnovski/mini.pairs",
    version = "*"
  },
  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      }
    end
  },
  {
    "tpope/vim-repeat",
    event = "VeryLazy"
  },
  {
    "ggandor/leap.nvim",
    enabled = true,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}
require("lazy").setup(plugins)
require("config-1.theme")
require("config-1.lsp-zero")
require("config-1.luasnip")
require("config-1.lualine")
require("config-1.oil")
require("config-1.comment")
require("config-1.bufferline")
require("config-1.colorizer")
require("config-1.rainbow-delimiters")
require("config-1.indent-blankline")
require("config-1.mini-indentscope") -- NOTE: Comment this line out if you want a solid line
require("config-1.gitsigns")
require("config-1.autocmd")
require("config-1.mini-pairs")
require("config-1.leap")
require("config-1.todo-comments")
require("config-1.telescope")
require("config-1.highlight-groups")
