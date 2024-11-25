return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"mfussenegger/nvim-lint",
		"mfussenegger/nvim-dap",
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		require("mason-tool-installer").setup({
			ensure_installed = {
				-- lua
				"stylua",
				"luacheck",
				"lua-language-server",

				-- html
				"html-lsp",
				"emmet-ls",
				"markuplint",

				-- php
				"pint",
				"phpcs",
				"blade-formatter",

				-- javascript
				"prettierd",
				"typescript-language-server",

				-- tailwind
				"rustywind",
				"tailwindcss-language-server",

				-- golang
				"gofumpt",
				"golangci-lint",
			},
		})
	end,
}
