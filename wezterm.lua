local wezterm = require("wezterm")

local config = wezterm.config_builder()

-- STYLE
local fg = "white"
local bg = "black"
config.colors = {
	split = "white",
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

--config.font = wezterm.font("CaskaydiaCove Nerd Font", { weight = "Regular" })
--config.font = wezterm.font("FiraCode Nerd Font", { weight = "Regular" })
config.font = wezterm.font("Iosevka Nerd Font", { weight = "Regular" })
config.font_size = 18
config.initial_rows = 30
config.initial_cols = 100
config.window_decorations = "NONE"
config.audible_bell = "Disabled"
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.dpi = 108

-- KEYBINDINGS
config.keys = {
	{
		key = "-",
		mods = "ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "|",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "z",
		mods = "ALT",
		action = wezterm.action.TogglePaneZoomState,
	},
}

return config
