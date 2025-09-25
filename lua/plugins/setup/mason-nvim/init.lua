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
		require("mason").setup()
		require("mason-tool-installer").setup({
			ensure_installed = {
				-- Formatters
				"stylua",
				"blade-formatter",
				"pint",
				"prettier",
				"yamlfix",
				"black",
				"isort",
				"goimports",
				"golines",
				"prettierd",

				-- Linters
				"luacheck",
				"flake8",
				"yamllint",
				"phpstan",
				"stylelint",

				-- LSPs
				"lua_ls",
				"pyright",
				"yamlls",
				"html",
				"cssls",
				"intelephense",
				"gopls",
			},
			auto_update = true,
			run_on_start = true,
		})
	end,
}
