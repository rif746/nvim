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
			outline = {
				keys = {
					jump = "<S-cr>",
					toggle_or_jump = "<cr>",
				},
			},
		})
	end,
}
