-- vim.cmd 'highlight LineNr guibg=NONE ctermbg=NONE'
-- vim.cmd 'highlight SignColumn guibg=NONE ctermbg=NONE'
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

local colorbuddy = {
	"tjdevries/colorbuddy.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("gruvz")
	end,
}

return {
	colorbuddy,
}
