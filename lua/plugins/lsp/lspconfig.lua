return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
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
