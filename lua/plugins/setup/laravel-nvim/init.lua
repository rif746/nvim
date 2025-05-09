return {
	"adalessa/laravel.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"tpope/vim-dotenv",
		"MunifTanjim/nui.nvim",
		"nvimtools/none-ls.nvim",
		"kevinhwang91/promise-async",
	},
	cmd = { "Laravel" },
	keys = {
		{ "<leader>la", ":Laravel artisan<cr>" },
		{ "<leader>lr", ":Laravel routes<cr>" },
		{ "<leader>lm", ":Laravel related<cr>" },
		{ "<leader>lc", ":Laravel commands<cr>" },
	},
	event = { "VeryLazy" },
	config = true,
	opts = {
		features = {
			override = {
				enable = true
			},
			model_info = {
				enable = true,
			},
			route_info = {
				enable = true,      --- to enable the laravel.nvim virtual text
				position = 'top',   --- where to show the info (available options 'right', 'top')
				middlewares = true, --- wheather to show the middlewares section in the info
				method = true,      --- wheather to show the method section in the info
				uri = true          --- wheather to show the uri section in the info
			},
		},
	}
}
