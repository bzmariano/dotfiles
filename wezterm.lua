local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.colors = {
	foreground = "silver",
	background = "black",
}

config.color_scheme = "Batman"

--config.font = wezterm.font("JetBrains Mono Nerd Font", { weight = "Light", italic = false })
config.font = wezterm.font("FiraCode Nerd Font", { weight = "Light", italic = false })
config.font_size = 16
config.initial_cols = 100
config.initial_rows = 24
config.window_decorations = "NONE"
config.audible_bell = "Disabled"

return config
