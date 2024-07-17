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
			autotag = {
				enable = true,
				filetypes = { "html", "xml", "php", "blade" },
			},
			rainbow = {
				enable = true,
				extended_mode = true,
				max_file_lines = nil,
			},
			ensure_installed = {
				-- "csv",
				-- "c",
				-- "cpp",
				-- "http",
				"json",
				"php",
				"phpdoc",
				"html",
				"blade",
				"javascript",
				"vue",
				"svelte",
				"typescript",
				"yaml",
				"lua",
				"luadoc",
				-- "latex",
				-- "go",
				-- "gomod",
				"markdown",
				"markdown_inline",
				"gdscript",
				"bash",
				"dockerfile",
				-- "kotlin",
				-- "java",
				"python",
				-- "query",
				-- "regex",
				-- "sql",
			},
			sync_install = true,
		})
	end,
}
