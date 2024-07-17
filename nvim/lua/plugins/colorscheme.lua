local onedark = {
	"olimorris/onedarkpro.nvim",
	priority = 1000,
	config = function()
		require("onedarkpro").setup({
			colors = {}, -- Override default colors or create your own
			highlights = {}, -- Override default highlight groups or create your own
			styles = { -- For example, to apply bold and italic, use "italic,bold"
				types = "italic", -- Style that is applied to types
				methods = "NONE", -- Style that is applied to methods
				numbers = "NONE", -- Style that is applied to numbers
				strings = "NONE", -- Style that is applied to strings
				comments = "italic,bold", -- Style that is applied to comments
				keywords = "NONE", -- Style that is applied to keywords
				constants = "NONE", -- Style that is applied to constants
				functions = "NONE", -- Style that is applied to functions
				operators = "NONE", -- Style that is applied to operators
				variables = "NONE", -- Style that is applied to variables
				parameters = "NONE", -- Style that is applied to parameters
				conditionals = "NONE", -- Style that is applied to conditionals
				virtual_text = "italic", -- Style that is applied to virtual text
			},
			options = {
				transparency = false,
			},
		})
		vim.cmd.colorscheme("onedark_dark")
	end,
}

local nightfox = {
	"EdenEast/nightfox.nvim",
	config = function()
		require("nightfox").setup({
			options = {
				transparent = true,
				styles = {
					comments = "italic,bold",
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
				inverse = {
					match_paren = false,
					visual = false,
					search = false,
				},
			},
		})
		-- vim.cmd.colorscheme("nightfox")
		vim.cmd.colorscheme("terafox")
		-- vim.cmd.colorscheme("carbonfox")
	end,
}

return {
	nightfox,
	--onedark,
}
