-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "Whitespace", { bg = "none" })
-- vim.api.nvim_set_hl(0, "MatchParen", { fg = "red" })
-- vim.api.nvim_set_hl(0, "Visual", { bg = Visual_color })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })

local colorbuddy = {
	"tjdevries/colorbuddy.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("gruvbuddy")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	end,
}

local nightfox = {
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("nightfox").setup({
			options = {
				-- Compiled file's destination location
				compile_path = vim.fn.stdpath("cache") .. "/nightfox",
				compile_file_suffix = "_compiled", -- Compiled file suffix
				transparent = true, -- Disable setting background
				styles = { -- Style to be applied to different syntax groups
					comments = "italic", -- Value is any valid attr-list value `:help attr-list`
					conditionals = "NONE",
					constants = "NONE",
					functions = "NONE",
					keywords = "NONE",
					numbers = "NONE",
					operators = "NONE",
					strings = "NONE",
					types = "italic",
					variables = "NONE",
				},
			},
		})
		vim.cmd.colorscheme("nightfox")
	end,
}

local kanagawa = {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			compile = false,
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
				theme = {
					wave = {},
					lotus = {},
					dragon = {},
					all = {
						ui = {
							bg_gutter = "none",
						},
					},
				},
			},
			theme = "wave",
			background = {
				dark = "wave",
				light = "lotus",
			},
		})
		vim.cmd("colorscheme kanagawa")
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
	end,
}

local onedark = {
	"joshdick/onedark.vim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("onedark")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	end,
}

local alabaster = {
	"p00f/alabaster.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("alabaster")
		vim.api.nvim_set_hl(0, "Normal", { fg = "white", bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { fg = "white" })
		vim.api.nvim_set_hl(0, "Whitespace", { fg = "#252525" })
		vim.api.nvim_set_hl(0, "@keyword", { fg = "#777777" })
		vim.api.nvim_set_hl(0, "@keyword.function", { fg = "#777777" })
		vim.api.nvim_set_hl(0, "@type", { fg = "#8888cc" })
		vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#8888cc" })
	end,
}

local rosepine = {
	"rose-pine/neovim",
	lazy = false,
	priority = 1000,
	config = function()
		require("rose-pine").setup({
			styles = {
				bold = false,
				italic = false,
				transparency = true,
			},
		})
		vim.cmd.colorscheme("rose-pine")
	end,
}

return {
	-- rosepine,
	-- colorbuddy,
	onedark,
	-- alabaster,
	-- nightfox,
	-- kanagawa,
}
