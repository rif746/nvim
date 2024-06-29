return {
	"kyazdani42/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		local WIDTH_RATIO = .5
		local HEIGHT_RATIO = .8

		require("nvim-tree").setup({
			disable_netrw = false,
			hijack_netrw = true,
			auto_reload_on_write = true,
			open_on_tab = true,
			hijack_cursor = false,
			update_cwd = false,
			hijack_unnamed_buffer_when_opening = false,
			live_filter = {
				prefix = "[SEARCH]: ",
				always_show_folders = false,
			},
			hijack_directories = {
				enable = true,
				auto_open = true,
			},
			diagnostics = {
				enable = true,
				icons = {
					hint = "",
					info = "",
					warning = "",
					error = "",
				},
			},
			update_focused_file = {
				enable = true,
			},
			filters = {
				dotfiles = false,
			},
			git = {
				enable = true,
				ignore = false,
				timeout = 500,
			},
			view = {
				float = {
					enable = true,
					quit_on_focus_loss = true,
					open_win_config = function()
						local screen_width = vim.opt.columns:get()
						local screen_heigth = vim.opt.lines:get() - vim.opt.cmdheight:get()
						local window_width = screen_width * WIDTH_RATIO
						local window_height = screen_heigth * HEIGHT_RATIO
						local center_x = (screen_width - window_width) / 2
						local center_y = ((vim.opt.lines:get() - window_height) / 2)
								- vim.opt.cmdheight:get()

						return {
							border = "rounded",
							relative = "editor",
							row = center_y,
							col = center_x,
							width = math.floor(window_width),
							height = math.floor(screen_heigth)
						}
					end,
				},
				width = function()
					return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
				end
			},
			trash = {
				cmd = "trash",
				require_confirm = true,
			},
			actions = {
				change_dir = {
					enable = true,
					global = false,
				},
				open_file = {
					quit_on_open = false,
					resize_window = true,
					window_picker = {
						enable = true,
						chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
						exclude = {
							filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
							buftype = { "nofile", "terminal", "help" },
						},
					},
				},
			},
			log = {
				enable = false,
				truncate = false,
				types = {
					all = false,
					config = false,
					git = false,
				},
			},
			renderer = {
				add_trailing = false,
				group_empty = false,
				highlight_git = false,
				full_name = false,
				highlight_opened_files = "none",
				root_folder_label = ":~:s?$?/..?",
				indent_width = 2,
				indent_markers = {
					enable = true,
					inline_arrows = true,
					icons = {
						corner = "└",
						edge = "│",
						item = "│",
						bottom = "─",
						none = " ",
					},
				},
			},
		})
	end
}
