return {
	"nvimtools/none-ls.nvim",
	requires = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		local async_formatting = function(bufnr)
			bufnr = bufnr or vim.api.nvim_get_current_buf()
			vim.lsp.buf.format({
				filter = function(client)
					-- apply whatever logic you want (in this example, we'll only use null-ls)
					return client.name == "null-ls"
				end,
				bufnr = bufnr,
			})
		end

		null_ls.setup({
			sources = {
				null_ls.builtins.completion.tags,

				-- Diagnostics
				null_ls.builtins.diagnostics.phpcs.with({
					extra_args = function()
						return { "--standard=PSR2" }
					end
				}),
				null_ls.builtins.diagnostics.golangci_lint,

				-- Formatting
				null_ls.builtins.formatting.pint,
				null_ls.builtins.formatting.prettierd,
				null_ls.builtins.formatting.blade_formatter,
				null_ls.builtins.formatting.stylelint,
				null_ls.builtins.formatting.rustywind,
				null_ls.builtins.formatting.gofumpt,
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePost", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							async_formatting(bufnr)
						end,
					})
				end
			end,
		})
	end
}
