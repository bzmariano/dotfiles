-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "Whitespace", { bg = "none" })
-- vim.api.nvim_set_hl(0, "MatchParen", { fg = "red" })
-- vim.api.nvim_set_hl(0, "Visual", { bg = Visual_color })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
-- vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })

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
				Delimiter = { fg = "white" },
				Special = { fg = "white" },
				FloatBorder = { fg = "none" },
				TelescopePromptBorder = { fg = "white" },
			},
		})
		vim.cmd.colorscheme("ayu")
	end,
}

local onedark = {
	"navarasu/onedark.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("onedark").setup({
			style = "darker",
			transparent = true,
			toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
			toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- List of styles to toggle between
			code_style = {
				comments = "italic",
				keywords = "none",
				functions = "none",
				strings = "none",
				variables = "none",
			},
			-- Custom Highlights --
			colors = {}, -- Override default colors
			highlights = {}, -- Override highlight groups
		})
		vim.cmd.colorscheme("onedark")
	end,
}

local tokyonight = {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "night",
			transparent = true,
			styles = {
				comments = { italic = true },
				keywords = { italic = false },
				functions = {},
				variables = {},
				sidebars = "dark",
				floats = "dark",
			},
			---@param colors ColorScheme
			on_colors = function(colors) end,

			---@param highlights tokyonight.Highlights
			---@param colors ColorScheme
			on_highlights = function(highlights, colors)
				highlights.TelescopeNormal = { fg = "white", bg = "none" }
				highlights.TelescopeBorder = { fg = "white", bg = "none" }
				highlights.TelescopePromptBorder = { fg = "white", bg = "none" }
			end,

			cache = true, -- When set to true, the theme will be cached for better performance
		})
		vim.cmd.colorscheme("tokyonight-night")
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
		vim.api.nvim_set_hl(0, "MatchParen", { fg = "red" })
	end,
}

return {
	--onedark,
	ayu,
	--tokyonight,
}
