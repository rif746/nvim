local map = function(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("", "<A-f>", ":NvimTreeToggle<CR>", { desc = "Toggle File Manager", noremap = false })
map("", "<A-r>", ":NvimTreeRefresh<CR>", { desc = "Refresh File Manager", noremap = false })
map("", "<A-c>", ":NvimTreeCollapse<CR>", { desc = "Collapse File Manager", noremap = false })

-- Buffer Control
map("n", "<leader>q", "q", { desc = "Create Macro", noremap = true })
map("n", "q", ":bdelete<CR>", { desc = "Delete Buffer", noremap = false })
map("", "<S-h>", ":bprev<CR>", { desc = "Previous Buffer" })
map("", "<S-l>", ":bnext<CR>", { desc = "Next Buffer" })

-- Buffer Split
map("n", "<leader>vs", ":vsplit<cr>", { desc = "Vertical Split" })
map("n", "<leader>hs", ":split<cr>", { desc = "Horizontal Split" })
map("n", "<leader>v+", ":vertical resize +2<cr>", { desc = "Vertical Resize +2" })
map("n", "<leader>v-", ":vertical resize -2<cr>", { desc = "Vertical Resize -2" })
map("n", "<leader>h+", ":resize +2<cr>", { desc = "Horizontal Resize +2" })
map("n", "<leader>h-", ":resize -2<cr>", { desc = "Horizontal Resize -2" })

-- Better Indentation Key
map("v", "<Tab>", ">", { noremap = false, desc = "Indentation" })
map("v", "<S-Tab>", "<", { noremap = false, desc = "Outdentation" })

-- Telescope
map("n", "ff", ":Telescope find_files<cr>", { desc = "Telescope Find File" })
map("n", "fg", ":Telescope live_grep<cr>", { desc = "Telescope Live Grep" })
map("n", "ft", ":Telescope help_tags<cr>", { desc = "Telescope Help Tags" })
map("n", "fk", ":Telescope keymaps<cr>", { desc = "Telescope Keymaps" })

-- Terminal
map("t", "<Esc>", " <C-\\><C-n> :quit<cr>", { desc = "Exit Terminal" })
