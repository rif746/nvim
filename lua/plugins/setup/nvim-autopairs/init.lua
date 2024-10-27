return {
	"windwp/nvim-autopairs",
	config = function()
		local npairs = require("nvim-autopairs")
		local cmp_npairs = require("nvim-autopairs.completion.cmp")
		local cmp = require("cmp")
		local rule = require("nvim-autopairs.rule")
		local cond = require("nvim-autopairs.conds")
		local sop = require("plugins.setup.nvim-autopairs.rules.space_on_parentheses")

		npairs.setup()
		sop(npairs, rule, cond)
		cmp.event:on("confirm_done", cmp_npairs.on_confirm_done())
	end,
}
