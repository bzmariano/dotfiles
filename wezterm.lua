local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Rosé Pine (Gogh)"

-- STYLE
local fg = "white"
local bg = "black"
config.colors = {
	split = "white",
	cursor_fg = "black",
	cursor_bg = "red",
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

config.font = wezterm.font("RobotoMono Nerd Font", { weight = "Regular" })
config.font_size = 14
config.initial_rows = 30
config.initial_cols = 100
config.window_decorations = "NONE"
config.audible_bell = "Disabled"
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
-- config.foreground_text_hsb = {
-- 	hue = 1.0,
-- 	saturation = 1,
-- 	brightness = 1,
-- }

-- KEYBINDINGS
config.keys = {
	{
		key = "-",
		mods = "CTRL",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "|",
		mods = "CTRL",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "z",
		mods = "CTRL|SHIFT",
		action = wezterm.action.TogglePaneZoomState,
	},
}

return config
