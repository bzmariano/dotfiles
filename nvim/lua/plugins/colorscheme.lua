local ayu = {
	"Shatur/neovim-ayu",
	lazy = false,
	priority = 1000,
	config = function()
		require("ayu").setup({
			overrides = {
				Normal = { bg = "None" },
				ColorColumn = { bg = "None" },
				SignColumn = { bg = "None" },
				Folded = { bg = "None" },
				FoldColumn = { bg = "None" },
				CursorLine = { bg = "None" },
				CursorColumn = { bg = "None" },
				WhichKeyFloat = { bg = "None" },
				VertSplit = { bg = "None" },
				Comment = { fg = "#aaaacc" },
			},
		})
		vim.cmd.colorscheme("ayu")
		vim.api.nvim_set_hl(0, "Delimiter", { fg = "white" })
	end,
}

return {
	ayu,
}
