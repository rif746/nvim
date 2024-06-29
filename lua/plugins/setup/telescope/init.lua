return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/popup.nvim", "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			pickers = {
				find_files = {
					theme = "dropdown",
				}
			},
		})
	end
}
