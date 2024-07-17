return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		{ "L3MON4D3/LuaSnip", build = "make install_jsregexp" },
		{ "tzachar/cmp-tabnine", build = "./install.sh" },
		"L3MON4D3/cmp-luasnip-choice",
		"onsails/lspkind.nvim",
	},
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")
		local tabnine = require("cmp_tabnine.config")
		local compare = require("cmp.config.compare")

		require("cmp_luasnip_choice").setup()

		local has_words_before = function()
			unpack = unpack or table.unpack
			local line, col = unpack(vim.api.nvim_win_get_cursor(0))
			return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
		end

		local source_mapping = {
			buffer = "[Buffer]",
			nvim_lsp = "[LSP]",
			nvim_lua = "[Lua]",
			cmp_tabnine = "[TN]",
			path = "[Path]",
		}

		cmp.setup({
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body)
				end,
			},
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "cmp_tabnine" },
				{ name = "luasnip_choice" },
			}, {
				{ name = "buffer" },
			}),
			formatting = {
				format = function(entry, vim_item)
					-- if you have lspkind installed, you can use it like
					-- in the following line:
					vim_item.kind = lspkind.symbolic(vim_item.kind, { mode = "symbol" })
					vim_item.menu = source_mapping[entry.source.name]
					if entry.source.name == "cmp_tabnine" then
						local detail = (entry.completion_item.labelDetails or {}).detail
						vim_item.kind = ""
						if detail and detail:find(".*%%.*") then
							vim_item.kind = vim_item.kind .. " " .. detail
						end

						if (entry.completion_item.data or {}).multiline then
							vim_item.kind = vim_item.kind .. " " .. "[ML]"
						end
					end
					local maxwidth = 80
					vim_item.abbr = string.sub(vim_item.abbr, 1, maxwidth)
					return vim_item
				end,
			},
			sorting = {
				priority_weight = 2,
				comparators = {
					require("cmp_tabnine.compare"),
					compare.offset,
					compare.exact,
					compare.score,
					compare.recently_used,
					compare.kind,
					compare.sort_text,
					compare.length,
					compare.order,
				},
			},
			mapping = cmp.mapping.preset.insert({
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({
					behavior = cmp.ConfirmBehavior.Insert,
					select = true,
				}),
				["<C-Space>"] = cmp.mapping.complete(),
				["<Tab>"] = function(fallback)
					if not cmp.select_next_item() then
						if vim.bo.buftype ~= "prompt" and has_words_before() then
							cmp.complete()
						else
							fallback()
						end
					end
				end,
				["<S-Tab>"] = function(fallback)
					if not cmp.select_prev_item() then
						if vim.bo.buftype ~= "prompt" and has_words_before() then
							cmp.complete()
						else
							fallback()
						end
					end
				end,
			}),
		})

		tabnine:setup({
			max_lines = 1000,
			max_num_results = 20,
			sort = true,
			run_on_every_keystroke = true,
			snippet_placeholder = "..",
			show_prediction_strength = false,
			min_percent = 0,
		})
	end,
}
