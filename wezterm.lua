local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- COLORSCHEME
config.color_scheme = "tokyonight"
local fg = "silver"
local bg = "#101515"
config.colors = {
	foreground = fg,
	background = bg,
	tab_bar = {
		active_tab = {
			fg_color = fg,
			bg_color = bg,
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		inactive_tab = {
			fg_color = fg,
			bg_color = "none",
		},
		new_tab = {
			fg_color = fg,
			bg_color = bg,
		},
	},
}

--config.font = wezterm.font("GeistMono Nerd Font", { weight = "Light" })
-- config.font = wezterm.font("CaskaydiaCove Nerd Font", { weight = "Light" })
config.font = wezterm.font("CodeNewRoman Nerd Font", { weight = "Regular" })
config.font_size = 18
config.initial_rows = 40
config.initial_cols = 120
config.window_decorations = "NONE"
config.audible_bell = "Disabled"
config.hide_tab_bar_if_only_one_tab = true

return config
