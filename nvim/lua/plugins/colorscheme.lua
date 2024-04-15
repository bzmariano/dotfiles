-- vim.cmd 'highlight LineNr guibg=NONE ctermbg=NONE'
-- vim.cmd 'highlight SignColumn guibg=NONE ctermbg=NONE'
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

local colorbuddy = {
	"tjdevries/colorbuddy.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("bzm")
	end,
}

local gruber = {
	"thimc/gruber-darker.nvim",
	config = function()
		require("gruber-darker").setup({
			transparent = true,
			underline = false,
			bold = false,
		})
		vim.cmd.colorscheme("gruber-darker")
	end,
}

local vscode = {
	"Mofiqul/vscode.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local c = require("vscode.colors").get_colors()
		require("vscode").setup({
			transparent = true,
			italic_comments = true,
			underline_links = true,
			disable_nvimtree_bg = true,
			color_overrides = {
				vscLineNumber = "#FFFFFF",
			},

			-- Override highlight groups (see ./lua/vscode/theme.lua)
			group_overrides = {
				-- this supports the same val table as vim.api.nvim_set_hl
				-- use colors from this colorscheme by requiring vscode.colors!
				Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
				Identifier = { fg = "white", bg = nil },
				String = { fg = c.vscGreen, bg = nil },
				Comment = { fg = c.vscGray, bg = nil, italic = true },
				Structure = { fg = c.vscOrange, bg = nil, italic = true },
				Type = { fg = c.vscOrange, bg = nil, italic = true },
			},
		})
		require("vscode").load()
		vim.cmd("highlight LineNr guibg=NONE ctermbg=NONE")
		vim.cmd("highlight SignColumn guibg=NONE ctermbg=NONE")
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	end,
}

return {
	--gruber,
	colorbuddy,
	--vscode,
}
