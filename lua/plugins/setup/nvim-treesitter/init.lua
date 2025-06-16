return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

		-- laravel blade parser
		parser_config.blade = {
			install_info = {
				url = "https://github.com/EmranMR/tree-sitter-blade",
				files = { "src/parser.c" },
				branch = "main",
			},
			filetype = "blade",
		}

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
