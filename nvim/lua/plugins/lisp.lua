local rainbow_delimiters = {
	"HiPhish/rainbow-delimiters.nvim",
	ft = { "lisp", "edn", "clj", "cljc" },
	lazy = false,
}

local parinfer = {
	"gpanders/nvim-parinfer",
	-- ft = { "lisp", "edn", "clj", "cljc" },
}

local sexp = {
	"PaterJason/nvim-treesitter-sexp",
	-- ft = { "lisp", "edn", "clj", "cljc" },
	config = function()
		require("treesitter-sexp").setup({
			-- Enable/disable
			enabled = true,
			-- Move cursor when applying commands
			set_cursor = true,
			-- Set to false to disable all keymaps
			keymaps = {
				-- Set to false to disable keymap type
				commands = {
					-- Set to false to disable individual keymaps
					swap_prev_elem = "<e",
					swap_next_elem = ">e",
					swap_prev_form = "<f",
					swap_next_form = ">f",
					promote_elem = "<LocalLeader>O",
					promote_form = "<LocalLeader>o",
					splice = "<LocalLeader>@",
					slurp_left = "<(",
					slurp_right = ">)",
					barf_left = ">(",
					barf_right = "<)",
					insert_head = "<I",
					insert_tail = ">I",
				},
				motions = {
					form_start = "(",
					form_end = ")",
					prev_elem = "[e",
					next_elem = "]e",
					prev_elem_end = "[E",
					next_elem_end = "]E",
					prev_top_level = "[[",
					next_top_level = "]]",
				},
				textobjects = {
					inner_elem = "ie",
					outer_elem = "ae",
					inner_form = "if",
					outer_form = "af",
					inner_top_level = "iF",
					outer_top_level = "aF",
				},
			},
		})
	end,
}

local conjure = {
	"Olical/conjure",
	dependencies = {
		{
			"PaterJason/cmp-conjure",
			ft = { "lisp", "edn", "clj", "cljc" },
			config = function()
				local cmp = require("cmp")
				local config = cmp.get_config()
				table.insert(config.sources, {
					name = "buffer",
					option = {
						sources = {
							{ name = "conjure" },
						},
					},
				})
				cmp.setup(config)
			end,
		},
	},
	config = function(_, _)
		require("conjure.main").main()
		require("conjure.mapping")["on-filetype"]()

		vim.api.nvim_create_autocmd("BufNewFile", {
			group = vim.api.nvim_create_augroup("conjure_log_disable_lsp", { clear = true }),
			pattern = { "conjure-log-*" },
			callback = function()
				vim.diagnostic.enable(false)
			end,
			desc = "Conjure Log disable LSP diagnostics",
		})

		vim.api.nvim_create_autocmd("FileType", {
			group = vim.api.nvim_create_augroup("comment_config", { clear = true }),
			pattern = { "clojure" },
			callback = function()
				vim.bo.commentstring = ";; %s"
			end,
			desc = "Lisp style line comment",
		})
	end,
	init = function()
		local nrepl = "conjure#client#clojure#nrepl#"
		vim.g[nrepl .. "connection#auto_repl#enabled"] = false
		vim.g[nrepl .. "connection#auto_repl#hidden"] = true
		vim.g[nrepl .. "connection#auto_repl#cmd"] = nil
		vim.g[nrepl .. "eval#print_options#right_margin"] = 60
		vim.g[nrepl .. "eval#print_options#length"] = 100
		vim.g[nrepl .. "eval#raw_out"] = true
		vim.g[nrepl .. "eval#auto_require"] = false
		vim.g[nrepl .. "completion#with_context"] = false
		vim.g["conjure#debug"] = false
		vim.g["conjure#eval#gsubs"] = nil
		vim.g["conjure#mapping#enable_defaults"] = false

		local keys = "conjure#mapping"
		vim.g[keys .. "#log_split"] = "ls"
		vim.g[keys .. "#log_vsplit"] = "lv"
		vim.g[keys .. "#log_buf"] = "lb"
		vim.g[keys .. "#log_toggle"] = "lg"
		vim.g[keys .. "#log_reset_soft"] = "lr"
		vim.g[keys .. "#log_reset_hard"] = "lR"
		vim.g[keys .. "#log_close_visible"] = "lq"
		vim.g[keys .. "#eval_current_form"] = "ee"
		vim.g[keys .. "#eval_root_form"] = "er"
		vim.g[keys .. "#eval_buf"] = "eb"
		vim.g[keys .. "#eval_comment_root_form"] = "ep"
		vim.keymap.set("n", "<leader>ce", "<CMD>ConjureEval *e<CR>", { desc = "[C]onjure eval: *[e]" })
		vim.keymap.set(
			"n",
			"<leader>cm",
			"<CMD>ConjureEval <CR>",
			{ desc = "[C]onjure eval: (ns-unamp *ns* '[M]ultimethod)" }
		)
		vim.g["conjure#highlight#enabled"] = true
		vim.g["conjure#highlight#timeout"] = 200
		vim.g["conjure#log#wrap"] = true
		vim.g["conjure#log#hud#enabled"] = false
		vim.g["conjure#log#jump_to_latest#enabled"] = true
		vim.g["conjure#log#break_length"] = 20
		vim.g["conjure#client_on_load"] = false
	end,
}

return {
	-- rainbow_delimiters,
	-- conjure,
	-- parinfer,
	-- sexp,
}
