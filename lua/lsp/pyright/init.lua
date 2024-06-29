local setup = require("lsp.setup")

setup("pyright", {
	python = {
		analysis = {
			diagnosticMode = "workspace",
			useLibraryCodeForTypes = true,
		},
	},
})
