-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "Whitespace", { bg = "none" })
-- vim.api.nvim_set_hl(0, "MatchParen", { fg = "red" })
-- vim.api.nvim_set_hl(0, "Visual", { bg = Visual_color })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })

return {
	"wincent/base16-nvim",
	lazy = false, -- load at start
	priority = 1000, -- load first
	config = function()
		vim.cmd([[colorscheme base16-tomorrow-night]])
		--vim.cmd([[colorscheme base16-gruvbox-dark-medium]])
		vim.o.background = "dark"
		-- XXX: hi Normal ctermbg=NONE
		-- Make comments more prominent -- they are important.
		local bools = vim.api.nvim_get_hl(0, { name = "Boolean" })
		--vim.api.nvim_set_hl(0, "Comment", bools)
		-- Make it clearly visible which argument we're at.
		local marked = vim.api.nvim_get_hl(0, { name = "PMenu" })
		vim.api.nvim_set_hl(
			0,
			"LspSignatureActiveParameter",
			{ fg = marked.fg, bg = marked.bg, ctermfg = marked.ctermfg, ctermbg = marked.ctermbg, bold = true }
		)
		-- Would be nice to customize the highlighting of warnings and the like to make
		-- them less glaring. But alas
		-- https://github.com/nvim-lua/lsp_extensions.nvim/issues/21
		-- call Base16hi("CocHintSign", g:base16_gui03, "", g:base16_cterm03, "", "", "")
		vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = "#404040" })
		vim.api.nvim_set_hl(0, "Whitespace", { bg = "none", fg = "#404040" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
		-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "MatchParen", { fg = "yellow" })
	end,
}
