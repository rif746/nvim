return {
	"nvimdev/lspsaga.nvim",
	opts = {
		lightbulb = {
			sign = false,
		},

		symbols_in_winbar = {
			enabled = true,
		},

		finder = {
			methods = {
				tyd = "textDocument/typeDefinition",
			},
		},
		outline = {
			keys = {
				jump = "<S-cr>",
				toggle_or_jump = "<cr>",
			},
		},
	},
}
