local setup = require("lsp.setup")

setup("jsonls")
setup("cssls")
setup("html")

setup("emmet_ls", {
	filetypes = { "html", "blade", "vue", "javascriptreact", "htmldjango", "svelte", "php" },
})

setup("svelte")
setup("tsserver", {
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
				languages = { "javascript", "typescript", "vue" },
			},
		},
	},
	filetypes = {
		"javascript",
		"typescript",
		"vue",
	},
})
