local setup = require("lsp.setup")

setup("jsonls")
setup("cssls")
setup("html")

setup("emmet_ls", {
	filetypes = { "html", "blade", "vue", "javascriptreact", "htmldjango", "svelte" },
})

setup("intelephense", {
	settings = {
		intelephense = {
			files = {
				maxSize = 1000000
			}
		}
	}
})

-- setup("svelte")
setup("ts_ls", {
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
