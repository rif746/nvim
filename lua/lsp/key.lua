return function(_, bufnr)
	-- Go to definition
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to definition" })

	-- Hover documentation
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Show hover documentation" })

	-- Show references
	vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "List references" })

	-- Rename symbol
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename symbol" })

	-- Code actions
	vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr, desc = "Code actions" })

	-- Format buffer
	vim.keymap.set("n", "<leader>f", function()
		vim.lsp.buf.format({ async = true })
	end, { buffer = bufnr, desc = "Format buffer" })

	-- Diagnostics navigation
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.jump({ count = -1, float = true })
	end, { buffer = bufnr, desc = "Previous diagnostic" })
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.jump({ count = 1, float = true })
	end, { buffer = bufnr, desc = "Next diagnostic" })

	-- Show diagnostic float
	vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { buffer = bufnr, desc = "Show diagnostic message" })
end
