local lsp = require("lsp-zero")
local ls = require("luasnip")
local cmp = require("cmp")
local cmp_action = require("lsp-zero").cmp_action()

lsp.on_attach(function(_, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({ buffer = bufnr })
end)

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = { "ts_ls", "emmet_language_server" },
  handlers = {
    lsp.default_setup,
  }
})

cmp.setup({
  preselect = "item",
  completion = {
    completeopt = "menu,menuone,noinsert"
  },
  snippet = {
    expand = function(args)
      ls.lsp_expand(args.body)
    end
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
  },
  sorting = {
    comparators = {
      cmp.config.compare.locality,
      cmp.config.compare.recently_used,
      cmp.config.compare.score, -- based on :  score = score + ((#sources - (source_index - 1)) * sorting.priority_weight)
      cmp.config.compare.offset,
      cmp.config.compare.order,
    }
  },
  mapping = {
    ["<C-k>"] = cmp_action.luasnip_jump_forward(),
    ["<C-j>"] = cmp_action.luasnip_jump_backward(),
    ["<Tab>"] = cmp.mapping.confirm({ select = false })
  },
})

vim.lsp.enable("lua_ls")
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
          'require'
        },
      },
    }
  }
})
lsp.set_sign_icons({
  error = "",
  warn = "",
  hint = "",
  info = "",
})

lsp.setup()

vim.api.nvim_create_autocmd("LspAttach", {
  desc = "LSP actions",
  callback = function(event)
    function GetOptsWithDesc(desc)
      return {
        buffer = event.buf,
        desc = desc
      }
    end

    vim.keymap.set("n", "K", vim.lsp.buf.hover, GetOptsWithDesc("Get info for symbol"))
    vim.keymap.set("n", "M", vim.diagnostic.open_float, GetOptsWithDesc("Open diagnostic float for error"))
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, GetOptsWithDesc("Go to definition"))
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, GetOptsWithDesc("Go to declaration"))
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, GetOptsWithDesc("Go to implementation"))
    vim.keymap.set("n", "go", vim.lsp.buf.type_definition, GetOptsWithDesc("Get type definition"))
    vim.keymap.set("n", "gr", vim.lsp.buf.references, GetOptsWithDesc("Find references for symbol"))
    vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, GetOptsWithDesc("Signature help"))
    vim.keymap.set("n", "<leader>rs", vim.lsp.buf.rename, GetOptsWithDesc("Rename symbol"))
    vim.keymap.set({ "n", "x" }, "<A-s>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>",
      GetOptsWithDesc("Format buffer"))
    vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>",
      { buffer = event.buf, remap = true, desc = "Code action" })

    vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>", GetOptsWithDesc("Open diagnostic float"))
    vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.jump({ count = -1 })<cr>",
      GetOptsWithDesc("Go to previous error"))
    vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.jump({ count = 1 })<cr>",
      GetOptsWithDesc("Go to next error"))
  end
});

vim.diagnostic.config({
  virtual_text = true,
  severity_sort = true,
})
