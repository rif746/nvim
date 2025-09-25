return function(params)
	setmetatable(params, { __index = { server = "", config = {} } })
	local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol)
	params.config.capabilities = vim.tbl_deep_extend("force", capabilities, params.config.capabilities or {})

	vim.lsp.config(params.server, params.config)
	vim.lsp.enable(params.server)
end
