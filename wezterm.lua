local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- STYLE
local fg = "silver"
local bg = "#101215"
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

config.font = wezterm.font("JetBrains Mono Nerd Font", { weight = "Regular" })
config.font_size = 14
config.initial_rows = 30
config.initial_cols = 100
config.window_decorations = "NONE"
config.audible_bell = "Disabled"
config.hide_tab_bar_if_only_one_tab = true

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
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
}

return config
