return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		{ "VonHeikemen/lsp-zero.nvim", branch = "v4.x" },
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-vsnip",
		"L3MON4D3/LuaSnip",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"golangci_lint_ls",
				"gopls",
				"html",
				"cssls",
				"ts_ls",
				"eslint",
			},
		})

		local lsp_zero = require("lsp-zero")
		local lsp_attach = function(client, bufnr)
			-- this is where you enable features that only work
			-- if there is a language server active in the file
		end
		lsp_zero.extend_lspconfig({
			sign_text = true,
			lsp_attach = lsp_attach,
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
		})

		local cmp = require("cmp")
		cmp.setup({
			snippet = {
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "vsnip" }, -- For vsnip users.
				-- { name = "luasnip" }, -- For luasnip users.
				-- { name = 'ultisnips' }, -- For ultisnips users.
				-- { name = 'snippy' }, -- For snippy users.
			}, {
				{ name = "buffer" },
			}),
		})

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({})
		lspconfig.golangci_lint_ls.setup({})
		lspconfig.gopls.setup({})
		lspconfig.html.setup({})
		lspconfig.cssls.setup({})
		lspconfig.ts_ls.setup({})
		lspconfig.eslint.setup({})

		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}
