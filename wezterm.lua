local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.colors = {
	foreground = "silver",
	background = "black",
}

config.color_scheme = "Batman"

config.font = wezterm.font("JetBrains Mono Nerd Font", { weight = "Regular", italic = false })
config.font_size = 14
config.initial_cols = 100
config.initial_rows = 30
config.window_decorations = "NONE"

return config
