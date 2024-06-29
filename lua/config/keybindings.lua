local map = function(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("", "<A-f>", ":NvimTreeToggle<CR>", { silent = true, noremap = false })
map("", "<A-r>", ":NvimTreeRefresh<CR>", { silent = true, noremap = false })
map("", "<A-c>", ":NvimTreeCollapse<CR>", { silent = true, noremap = false })

-- Buffer Control
map("n", "q", ":bdelete<CR>", { noremap = false })
map("", "<S-h>", ":bprev<CR>")
map("", "<S-l>", ":bnext<CR>")

-- Buffer Split
map("n", "vs", ":vspit<cr>")
map("n", "hs", ":spit<cr>")
map("n", "v+", ":vertical resize +2<cr>")
map("n", "v-", ":vertical resize -2<cr>")
map("n", "h+", ":resize +2<cr>")
map("n", "h-", ":resize -2<cr>")

-- Better Indentation Key
map("v", "<Tab>", ">", { noremap = false, silent = true })
map("v", "<S-Tab>", "<", { noremap = false, silent = true })

-- Telescope
map("n", "ff", ":Telescope find_files<cr>")
map("n", "fg", ":Telescope live_grep<cr>")
map("n", "ft", ":Telescope help_tags<cr>")
map("n", "fk", ":Telescope keymaps<cr>")

-- Terminal
map("n", "t", ":Lspsaga term_toggle<cr>")
map("t", "<Esc>", " <C-\\><C-n> :quit<cr>")
