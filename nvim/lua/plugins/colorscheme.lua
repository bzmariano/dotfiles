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

local kanagawa = {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			compile = true,
			undercurl = true,
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = false },
			statementStyle = { bold = false },
			typeStyle = { italic = true },
			transparent = true,
			dimInactive = false,
			terminalColors = true,
			colors = {
				palette = {},
				theme = { wave = {}, lotus = {}, dragon = {}, all = {
					ui = { bg_gutter = "none" },
				} },
			},
			overrides = function(colors)
				return {
					Function = { fg = colors.palette.carpYellow },
				}
			end,
			theme = "wave",
			background = {
				dark = "dragon",
				light = "lotus",
			},
		})
		vim.cmd("colorscheme kanagawa")
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
	end,
}

local colorbuddy = {
	"tjdevries/colorbuddy.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("colorbuddy").colorscheme("bzm")
		vim.cmd.colorscheme("bzm")
	end,
}

return {
	colorbuddy,
	--base16,
	--kanagawa,
}
