return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters = {
				blade = {
					command = "blade-formatter",
					stdin = false,
					args = { "--write", "$FILENAME" },
				},
			},

			formatters_by_ft = {
				lua = { "stylua" },
				blade = { "blade" },
				javascript = { "prettier" },
				json = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				yaml = { "prettier" },
				scss = { "prettier" },
				typescript = { "prettier" },
				go = { "gofumpt" },
				java = { "google-java-format" },
				python = { "isort", "black" },
				markdown = { "mdformat" },
				sql = { "sql_formatter" },
				sh = { "shellharden" },
			},

			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 1500,
			},
		})
	end,
}
