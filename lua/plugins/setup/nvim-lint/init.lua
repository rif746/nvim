return {
	"mfussenegger/nvim-lint",
	config = function()
		local phpcs = require("lint").linters.phpcs
		phpcs.args = {
			"-q",
			"--report=json",
			"-",
		}
		require("lint").linters_by_ft = {
			html = { "htmlhint" },
			go = { "golang-ci" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave", "InsertEnter" }, {
			callback = function()
				-- try_lint without arguments runs the linters defined in `linters_by_ft`
				-- for the current filetype
				require("lint").try_lint()
			end,
		})
	end,
}