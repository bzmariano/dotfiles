local colorbuddy = require("colorbuddy")

-- Set up your custom colorscheme if you want
colorbuddy.colorscheme("bzm")

-- And then modify as you like
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local colors = colorbuddy.colors
local styles = colorbuddy.styles
local groups = colorbuddy.groups

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
-- Color.new("background", "#282c34")

Color.new("yellow", "#ffff66")
Color.new("purple", "#ff99cc")
Color.new("green", "#88cc88")
Color.new("orange", "#ffaa66")
Color.new("gray", "#aaaaaa")
Color.new("gray_dark", "#333333")
Color.new("blue_dark", "#102040")
Color.new("background", "#101010")

Group.new("Normal", colors.white, colors.background, nil)
Group.new("NormalFloat", colors.white, colors.background, nil)
Group.new("FloatBorder", colors.white, nil, nil)

Group.new("@constant", colors.white, nil, styles.none)
Group.new("@function", colors.white, nil, styles.none)
Group.new("@function.bracket", colors.Normal, groups.Normal)
Group.new("@keyword", colors.purple, nil, styles.none)
Group.new("@keyword.faded", groups.nontext.fg:light(), nil, styles.none)
Group.new("@property", colors.white)
Group.new("@variable", colors.white, nil)
Group.new("@type", colors.white, groups.Normal)
Group.new("@type.builtin", colors.orange, groups.Normal, styles.italic)
Group.new("@module", colors.orange, groups.Normal)
Group.new("@variable.builtin", colors.purple:light(), groups.Normal)
Group.new("@number", colors.yellow, nil, nil)

Group.new("String", colors.yellow, nil, nil)
Group.new("Character", colors.yellow, nil, nil)

Group.new("Directory", colors.yellow, nil, nil)
Group.new("Visual", nil, colors.blue_dark, styles.bold + styles.italic)

Group.new("LineNr", colors.gray_dark, nil, nil)
Group.new("StatusLine", colors.white, colors.gray_dark, nil)
Group.new("Whitespace", colors.gray_dark, nil, nil)
Group.new("SignColumn", colors.gray_dark, nil, nil)
Group.new("Operator", colors.white, nil, nil)
Group.new("Special", colors.white, nil, nil)
Group.new("Macro", colors.orange, nil, nil)
Group.new("PreProc", colors.orange, nil, nil)
Group.new("Delimiter", colors.gray, nil, nil)
