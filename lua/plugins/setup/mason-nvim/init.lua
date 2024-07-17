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
				"lua_ls",
				"stylua",

				-- shell script
				"bash-language-server",

				-- python
				"pyright",
				"isort",
				"debugpy",

				-- webdev
				"intelephense",
				"emmet_ls",
				"html",
				"jsonls",
				"cssls",
				"tsserver",
				"yamlls",
				-- "php-debug-adapter",
				"tailwindcss",
				"blade-formatter",
				"prettier",
				"svelte",

				-- markdown
				"marksman",
				"mdformat",

				-- go
				-- "gopls",
				-- "gofumpt",

				-- java
				-- "jdtls",
				-- "google-java-format",

				-- sql
				-- "sqlls",
				-- "sql-formatter",
			},
		})
	end,
}
