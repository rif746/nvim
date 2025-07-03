return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		-- snippet
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",

		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-path",

		-- LSP
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lsp-signature-help",

		-- Buffer
		"hrsh7th/cmp-buffer",
	},

	config = function()
		require("plugins.setup.nvim-cmp.config.init")
		-- require("plugins.setup.nvim-cmp.config.text_change")
		require("plugins.setup.nvim-cmp.config.highlight")
	end,
}
