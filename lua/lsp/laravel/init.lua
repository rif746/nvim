local configs = require("lspconfig.configs")
local setup = require("lsp.setup")
local util = require("lspconfig.util")

-- Configure it
configs.blade = {
	default_config = {
		-- Path to the executable: laravel-dev-generators
		cmd = { "laravel-dev-tools", "lsp" },
		filetypes = { "blade" },
		root_dir = util.root_pattern("composer.json", ".git"),
		settings = {},
	},
}
-- Set it up
setup("blade")
