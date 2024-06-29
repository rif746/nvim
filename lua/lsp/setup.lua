return function(lang, config)
	local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

	capabilities.textDocument.foldingRange = {
		dynamicRegistration = false,
		lineFoldingOnly = true,
	}

	local mod = require("lspconfig")[lang]["setup"]
	if type(config) ~= "table" then
		config = {}
	end
	config["capabilities"] = capabilities

	if type(config["on_attach"]) ~= "table" then
		config["on_attach"] = require("lsp.key")
	end

	if type(mod) == "table" then
		mod = config
	else
		mod(config)
	end
end
