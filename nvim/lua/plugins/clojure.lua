local rainbow_delimiters = {
	"HiPhish/rainbow-delimiters.nvim",
	lazy = false,
	ft = { "lisp", "edn", "clj", "cljc" },
}

local parinfer = {
	"gpanders/nvim-parinfer",
	lazy = false,
	ft = { "edn", "clj", "cljc" },
}

local vim_jack_in = {
	"clojure-vim/vim-jack-in",
	ft = { "edn", "clj", "cljc" },
	event = "VeryLazy",
	dependencies = {
		"tpope/vim-dispatch",
		"radenling/vim-dispatch-neovim",
	},
}

local conjure = {
	"Olical/conjure",
	lazy = false,
	ft = { "lisp", "edn", "clj", "cljc" },
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
	config = function(_, opts)
		require("conjure.main").main()
		require("conjure.mapping")["on-filetype"]()

		vim.api.nvim_create_autocmd("BufNewFile", {
			group = vim.api.nvim_create_augroup("conjure_log_disable_lsp", { clear = true }),
			pattern = { "conjure-log-*" },
			callback = function()
				vim.diagnostic.disable(0)
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
		-- nrepl
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
		-- manual keybinding
		vim.g["conjure#mapping#log_split"] = "ls"
		vim.g["conjure#mapping#log_vsplit"] = "lv"
		vim.g["conjure#mapping#log_buf"] = "lb"
		vim.g["conjure#mapping#log_toggle"] = "lg"
		vim.g["conjure#mapping#log_reset_soft"] = "lr"
		vim.g["conjure#mapping#log_reset_hard"] = "lR"
		vim.g["conjure#mapping#log_close_visible"] = "lq"
		vim.g["conjure#mapping#eval_current_form"] = "ee"
		vim.g["conjure#mapping#eval_root_form"] = "er"
		vim.g["conjure#mapping#eval_buf"] = "eb"
		vim.g["conjure#mapping#eval_comment_root_form"] = "ecr"
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
		vim.g["conjure#log#hud#enabled"] = true
		vim.g["conjure#log#jump_to_latest#enabled"] = true
		vim.g["conjure#log#break_length"] = 20
		vim.g["conjure#client_on_load"] = false
	end,
}

return {
	parinfer,
	--rainbow_delimiters,
	--vim_jack_in,
	conjure,
}
