local opts = { silent = true, noremap = true }

return function(_, bufnr)
	local function map(mode, l, r, opt)
		opts = opt or {}
		opts.silent = true
		opts.buffer = bufnr
		vim.keymap.set(mode, l, r, opts)
	end

	-- Key
	map('n', '<F8>', '<cmd>Lspsaga outline<cr>', opts)
	map("n", "gr", "<cmd>Lspsaga rename<cr>", opts)
	map("n", "ga", "<cmd>Lspsaga code_action<cr>", opts)
	map("x", "ga", ":<c-u>Lspsaga range_code_action<cr>", opts)
	map("n", "gK", "<cmd>Lspsaga hover_doc<cr>", opts)
	map("n", "gF", "<cmd>Lspsaga finder<cr>", opts)
	map("n", "gdd", "<cmd>Lspsaga show_buf_diagnostics<cr>", opts)
	map("n", "gdw", "<cmd>Lspsaga show_workspace_diagnostics<cr>", opts)
	map("n", "gtd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
end
