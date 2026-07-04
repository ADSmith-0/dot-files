local cmp = require("cmp")

-- cmp.setup({
--   sorting = {
--     comparators = {
--       cmp.config.compare.offset,
--       cmp.config.compare.exact,
--       cmp.config.compare.recently_used,
--       cmp.config.compare.locality,
--       cmp.config.compare.score, -- based on :  score = score + ((#sources - (source_index - 1)) * sorting.priority_weight)
--       cmp.config.compare.kind,
--       cmp.config.compare.sort_text,
--       cmp.config.compare.length,
--       cmp.config.compare.order,
--     }
--   },
--   -- mapping = {
--   --   ["<C-k>"] = cmp_action.luasnip_jump_forward(),
--   --   ["<C-j>"] = cmp_action.luasnip_jump_backward(),
--   --   ["<Tab>"] = cmp.mapping.confirm({ select = false })
--   -- },
-- })


cmp.setup({
	preselect = "item",
	completion = {
		completeopt = "menu,menuone,noinsert"
	},
	snippet = {
		expand = function(args)
			require('luasnip').lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-e>'] = cmp.mapping.abort(),
		['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'luasnip' }, -- For luasnip users.
	}, {
		{ name = 'buffer' },
	})
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	}),
	matching = { disallow_symbol_nonprefix_matching = false }
})

-- Set up lspconfig.
require('cmp_nvim_lsp').default_capabilities()

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
		vim.keymap.set("n", "<C-K>", vim.diagnostic.open_float,
			GetOptsWithDesc("Open diagnostic float for error"))
		vim.keymap.set("n", "gl", vim.diagnostic.open_float, GetOptsWithDesc("Open diagnostic float"))
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, GetOptsWithDesc("Go to definition"))
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, GetOptsWithDesc("Go to declaration"))
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, GetOptsWithDesc("Go to implementation"))
		vim.keymap.set("n", "go", vim.lsp.buf.type_definition, GetOptsWithDesc("Get type definition"))
		vim.keymap.set("n", "gr", vim.lsp.buf.references, GetOptsWithDesc("Find references for symbol"))
		vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, GetOptsWithDesc("Signature help"))
		vim.keymap.set("n", "<leader>rs", vim.lsp.buf.rename, GetOptsWithDesc("Rename symbol"))
		vim.keymap.set({ "n", "x" }, "<A-s>", function()
			require("conform").format({ lsp_format = "fallback" })
		end, GetOptsWithDesc("Format buffer"))
		-- Alt Gr + s
		vim.keymap.set({ "n", "x" }, "ß", function()
			require("conform").format({ lsp_format = "fallback" })
		end, GetOptsWithDesc("Format buffer"))
		vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.jump({ count = -1 })<cr>",
			GetOptsWithDesc("Go to previous error"))
		vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.jump({ count = 1 })<cr>",
			GetOptsWithDesc("Go to next error"))
	end
});

vim.diagnostic.config({
	virtual_text = true,
	severity_sort = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.HINT] = "",
			[vim.diagnostic.severity.INFO] = "",
		}
	}
})
