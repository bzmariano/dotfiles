-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "Whitespace", { bg = "none" })
-- vim.api.nvim_set_hl(0, "MatchParen", { fg = "red" })
-- vim.api.nvim_set_hl(0, "Visual", { bg = Visual_color })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })

local base16 = {
	"wincent/base16-nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.o.background = "dark"
		vim.cmd.colorscheme("base16-tomorrow-night")
		local bools = vim.api.nvim_get_hl(0, { name = "Boolean" })
		vim.api.nvim_set_hl(0, "Comment", bools)
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
		vim.api.nvim_set_hl(0, "Cursorline", { bg = "#000040" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "MatchParen", { fg = "red" })
		vim.api.nvim_set_hl(0, "Delimiter", { fg = "gray" })
	end,
}

local mono = {
	"kdheepak/monochrome.nvim",
	config = function()
		local green = "#66aa66"
		local gray = "#999999"
		local yellow = "#cccc66"
		vim.cmd("colorscheme monochrome")
		vim.api.nvim_set_hl(0, "Normal", { fg = gray })
		vim.api.nvim_set_hl(0, "TSVariable", { fg = gray })
		vim.api.nvim_set_hl(0, "Delimiter", { fg = gray })
		vim.api.nvim_set_hl(0, "Comment", { fg = yellow })
		vim.api.nvim_set_hl(0, "Operator", { fg = gray })
		vim.api.nvim_set_hl(0, "@variable", { fg = gray })
		vim.api.nvim_set_hl(0, "@function", { fg = gray })
		vim.api.nvim_set_hl(0, "@keyword", { fg = "white" })
		vim.api.nvim_set_hl(0, "@keyword.function", { fg = "white" })
		vim.api.nvim_set_hl(0, "@string", { fg = green })
		vim.api.nvim_set_hl(0, "@type", { fg = "white" })
		vim.api.nvim_set_hl(0, "@type.builtin", { fg = "white" })
		vim.api.nvim_set_hl(0, "@type.builtin", { fg = "white" })
	end,
}

return {
	mono,
	--base16,
}
