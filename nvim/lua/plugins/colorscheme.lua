-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "Whitespace", { bg = "none" })
-- vim.api.nvim_set_hl(0, "MatchParen", { fg = "red" })
-- vim.api.nvim_set_hl(0, "Visual", { bg = Visual_color })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })

local alabaster = {
	"p00f/alabaster.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("alabaster")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#aa88ff", bg = "none" })
		vim.api.nvim_set_hl(0, "@keyword", { fg = "#aa88ff", bg = "none" })
	end,
}

local kanagawa = {
	"rebelot/kanagawa.nvim",
	config = function()
		vim.o.background = "light"
		require("kanagawa").setup({
			compile = false, -- enable compiling the colorscheme
			undercurl = true, -- enable undercurls
			commentStyle = { italic = true },
			functionStyle = {},
			keywordStyle = { italic = false },
			statementStyle = { bold = false },
			typeStyle = { italic = true },
			transparent = false, -- do not set background color
			dimInactive = false, -- dim inactive window `:h hl-NormalNC`
			terminalColors = true, -- define vim.g.terminal_color_{0,17}
			colors = { -- add/modify theme and palette colors
				palette = {},
				theme = { wave = {}, lotus = {}, dragon = {}, all = { ui = { bg_gutter = "none" } } },
			},
			overrides = function(colors) -- add/modify highlights
				return {}
			end,
			theme = "wave", -- Load "wave" theme when 'background' option is not set
			background = { -- map the value of 'background' option to a theme
				dark = "wave", -- try "dragon" !
				light = "lotus",
			},
		})

		-- setup must be called before loading
		vim.cmd("colorscheme kanagawa")
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
	end,
}

return {
	--kanagawa,
	alabaster,
}
