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
				"lua-language-server",
				"luacheck",
				"stylua",

				-- python
				"pyright",
				"autoflake",
				"flake8",

				-- docker
				"dockerfile-language-server",

				-- go
				"goimports",
				"golines",
				"gopls",

				-- php
				"intelephense",
				"php-cs-fixer",
				"phpcs",
				"pint",
				"blade-formatter",

				-- javascript
				"json-lsp",
				"typescript-language-server",
				"prettier",

				-- html
				"emmet-language-server",
				"html-lsp",
				"htmlbeautifier",
				"css-lsp",
				"tailwindcss-language-server",

				-- yaml
				"yaml-language-server",
				"yamlfix",
				"yamllint",
			},
		})
	end,
}
