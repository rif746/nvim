return {
	"nvimdev/lspsaga.nvim",
	config = function()
		require("lspsaga").setup({

			symbols_in_winbar = {
				enabled = true,
			},

			finder = {
				methods = {
					tyd = "textDocument/typeDefinition",
				},
			},
			ui = {
				kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
			},
			outline = {
				keys = {
					jump = "<S-cr>",
					toggle_or_jump = "<cr>",
				},
			},
		})
	end,
}
