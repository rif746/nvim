return {
	"nathom/filetype.nvim",
	config = function()
		require("filetype").setup({
			overrides = {
				extensions = {
					scss = "scss",
					sass = "sass",
					html = "html",
				},
				complex = {
					[".blade.php"] = "blade",
				},
			},
		})
	end
}
