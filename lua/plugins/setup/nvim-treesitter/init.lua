return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = true,
			},
			indent = {
				enable = true,
			},
			ensure_installed = {
				"c",

				"dart",

				"cmake",

				"go",

				"html",
				"blade",
				"json",
				"css",
				"xml",
				"php",
				"phpdoc",
				"php_only",

				"lua",
				"luadoc",

				"markdown",
				"markdown_inline",

				"sql",
			},
			sync_install = true,
		})
	end,
}
