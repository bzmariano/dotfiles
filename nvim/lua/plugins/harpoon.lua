return {
	"ThePrimeagen/harpoon",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("harpoon").setup({
			vim.keymap.set("n", "<leader>ee", ":lua require('harpoon.ui').toggle_quick_menu()<CR>"),

			vim.keymap.set("n", "<leader>aa", ":lua require('harpoon.mark').add_file()<CR>"),

			vim.keymap.set("n", "<leader>7", ":lua require('harpoon.ui').nav_file(1)<CR>"),
			vim.keymap.set("n", "<leader>8", ":lua require('harpoon.ui').nav_file(2)<CR>"),
			vim.keymap.set("n", "<leader>9", ":lua require('harpoon.ui').nav_file(3)<CR>"),
			vim.keymap.set("n", "<leader>0", ":lua require('harpoon.ui').nav_file(4)<CR>"),
		})
	end,
}
