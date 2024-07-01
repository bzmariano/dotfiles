local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- COLORSCHEME
config.color_scheme = "tokyonight-night"
local foreground_color = "silver"
local background_color = "#101010"
config.colors = {
	foreground = foreground_color,
	background = background_color,
	tab_bar = {
		active_tab = {
			fg_color = foreground_color,
			bg_color = background_color,
			intensity = "Normal",
			underline = "None",
			italic = false,
			strikethrough = false,
		},
		inactive_tab = {
			fg_color = "silver",
			bg_color = "none",
		},
		new_tab = {
			fg_color = foreground_color,
			bg_color = background_color,
		},
	},
}

config.font = wezterm.font("CaskaydiaCove Nerd Font", { weight = "Regular" })
config.font_size = 14
config.initial_cols = 100
config.initial_rows = 30
config.line_height = 1.1
config.window_decorations = "NONE"
config.audible_bell = "Disabled"
config.dpi = 120
config.hide_tab_bar_if_only_one_tab = true
-- config.tab_bar_at_bottom = true

return config
