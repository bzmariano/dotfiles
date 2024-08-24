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
		vim.api.nvim_set_hl(0, "WhiteSpace", { fg = "#252525" })
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
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
		vim.api.nvim_set_hl(0, "@comment", { fg = "#cfaa44" })
		vim.api.nvim_set_hl(0, "@keyword", { fg = "#999999" })
		vim.api.nvim_set_hl(0, "@keyword.func", { fg = "#999999" })
	end,
}

return {
	onedark,
	--colorbuddy,
	--alabaster,
}
