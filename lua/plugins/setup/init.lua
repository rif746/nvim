return {
	{ "onsails/lspkind.nvim" },
	{
		"jwalton512/vim-blade",
		config = function ()
			vim.g.blade_custom_directives = {"vite"}
			vim.g.blade_custom_directives_pairs = {
				script = 'endscript',
				error = 'enderror'
			}
		end
	},
	{
		"karb94/neoscroll.nvim",
		config = function()
			require("neoscroll").setup()
		end,
	},
	{
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup()
		end,
	},
	{
		"lervag/vimtex",
		config = function()
			vim.g.vimtex_view_method = "zathura"
			vim.g.vimtex_view_compiler_method = "pdflatex"
		end,
	},
	{
		"wakatime/vim-wakatime",
		lazy = false,
	},
}
