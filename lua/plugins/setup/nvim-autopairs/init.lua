return {
	"windwp/nvim-autopairs",
	config = function()
		local npairs = require("nvim-autopairs")
		local rule = require("nvim-autopairs.rule")
		local cond = require("nvim-autopairs.conds")
		local sop = require("plugins.setup.nvim-autopairs.rules.space_on_parentheses")

		npairs.setup()
		sop(npairs, rule, cond)
	end,
}
