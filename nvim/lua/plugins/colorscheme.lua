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
	end,
}

local ayu = {
	"Shatur/neovim-ayu",
	lazy = false,
	priority = 1000,
	config = function()
		require("ayu").setup({
			mirage = false,
			terminal = true,
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
			},
		})
		vim.cmd.colorscheme("ayu")
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
	end,
}

local tokyonight = {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "night",
			transparent = false,
			styles = {
				comments = { italic = true },
				keywords = { italic = false },
				functions = {},
				variables = {},
				sidebars = "dark",
				floats = "dark",
			},
		})
		vim.cmd.colorscheme("tokyonight")
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
	rosepine,
	-- colorbuddy,
	-- onedark,
	-- alabaster,
	-- ayu,
	-- tokyonight,
}
