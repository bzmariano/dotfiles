local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Batman"

-- STYLE
local fg = "white"
local bg = "black"
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

--config.font = wezterm.font("CodeNewRoman Nerd Font Mono", { weight = "Regular" })
config.font = wezterm.font("UbuntuSansMono Nerd Font", { weight = "Regular" })
config.font_size = 17
config.initial_rows = 40
config.initial_cols = 120
config.window_decorations = "NONE"
config.audible_bell = "Disabled"
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

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
