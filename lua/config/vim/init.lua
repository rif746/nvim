local cmd = vim.cmd
local autocmd = vim.api.nvim_create_autocmd
local vim_settings = require("config.vim.settings")

-- activate filetype and indentation
cmd("filetype plugin indent on")

-- yank to clipboard if available
if vim.fn.has('unnamedplus') then
	vim.o.clipboard = 'unnamedplus'
else
	vim.o.clipboard = 'unnamed'
end

-- remove numbering when open terminal
autocmd("TermOpen", {
	pattern = "*",
	callback = function()
		vim.wo.number = false
		vim.wo.relativenumber = false
	end
})

-- FileType
vim.filetype.add({
	pattern = {
		[".*.blade.php"] = "blade"
	}
})

for _, value in ipairs(vim_settings) do
vim[value[1]][value[2]] = value[3]
end
