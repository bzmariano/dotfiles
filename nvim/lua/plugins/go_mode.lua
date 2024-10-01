return {
	-- -- Golang Macros
	-- function InsertIfErr()
	-- 	vim.api.nvim_put({ "if err != nil {", "}" }, "l", true, true)
	-- 	vim.cmd("normal! k==")
	-- 	vim.cmd("normal! O")
	-- 	vim.cmd("startinsert")
	-- end
	-- vim.api.nvim_set_keymap("n", "<leader>ei", ":lua InsertIfErr()<CR>", { noremap = true, silent = true })
	"ray-x/go.nvim",
	dependencies = { -- optional packages
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("go").setup()
	end,
	event = { "CmdlineEnter" },
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
