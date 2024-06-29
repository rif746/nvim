local setup = require("lsp.setup")

setup("jsonls")
setup("cssls")
setup("html")

setup("emmet_ls", {
	filetypes = { "html", "blade", "vue", "javascriptreact", "htmldjango", "svelte", "php" },
})

setup("eslint", {
	on_attach = function(_, bufnr)
		local key = require("lsp.key")
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EslintFixAll",
		})
		key(_, bufnr)
	end,
})
