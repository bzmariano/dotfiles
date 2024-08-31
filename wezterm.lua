local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Gruvbox dark, hard (base16)"

-- STYLE
local fg = "white"
local bg = "#202020"
config.colors = {
	split = "white",
	-- cursor_bg = "yellow",
	-- cursor_fg = "black",
	-- foreground = fg,
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

config.font = wezterm.font("Noto Mono", { weight = "Regular" })
config.font_size = 16
config.initial_rows = 40
config.initial_cols = 100
config.window_decorations = "NONE"
config.audible_bell = "Disabled"
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
config.foreground_text_hsb = {
	hue = 1.0,
	saturation = 1,
	brightness = 1.5,
}

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
