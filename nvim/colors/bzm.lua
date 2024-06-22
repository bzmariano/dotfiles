local colorbuddy = require("colorbuddy")

-- Set up your custom colorscheme if you want
colorbuddy.colorscheme("bzm")

-- And then modify as you like
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local styles = colorbuddy.styles

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
-- Color.new("background", "#282c34")

Color.new("white", "#ffffff")
Color.new("purple", "#aa88cc")
Color.new("green", "#88cc88")
Color.new("yellow", "#cccc88")
Color.new("orange", "#ffaa66")
Color.new("red", "#ff6666")
Color.new("gray", "#aaaaaa")
Color.new("gray_dark", "#333333")
Color.new("blue_dark", "#102040")
Color.new("background", "#151515")

Group.new("FloatBorder", colors.white, nil, nil)
Group.new("Normal", colors.white, colors.background, nil)
Group.new("NormalFloat", colors.white, colors.background, nil)

Group.new("Title", colors.white, nil, nil)
Group.new("Identifier", colors.white, nil, nil)
Group.new("Operator", colors.white, nil, nil)
Group.new("Function", colors.white, nil, nil)

Group.new("Directory", colors.purple, nil, nil)
Group.new("Cursorline", nil, colors.blue_dark, nil)
Group.new("Visual", nil, colors.blue_dark, styles.bold + styles.italic)

Group.new("LineNr", colors.gray_dark, nil, nil)
Group.new("StatusLine", colors.white, colors.gray_dark, nil)
Group.new("Whitespace", colors.gray_dark, nil, nil)
Group.new("SignColumn", colors.gray_dark, nil, nil)

Group.new("Comment", colors.gray, nil, nil)

Group.new("Error", colors.red:dark(), nil, styles.italic)
Group.new("Warning", colors.orange:light():light(), nil, styles.italic)

Group.new("Number", colors.red, nil, nil)
Group.new("Float", colors.red, nil, nil)
Group.new("Boolean", colors.red, nil, nil)
Group.new("Underlined", colors.red, nil, nil)

Group.new("Delimiter", colors.gray, nil, nil)

Group.new("String", colors.green, nil, nil)
Group.new("SpecialChar", colors.green, nil, nil)
Group.new("Character", colors.green, nil, nil)

Group.new("Special", colors.yellow, nil, nil)
Group.new("Constant", colors.yellow, nil, nil)
Group.new("Type", colors.yellow, nil, nil)
Group.new("Typedef", colors.yellow, nil, nil)
Group.new("Structure", colors.yellow, nil, nil)
Group.new("@type.builtin", colors.yellow, nil, nil)
Group.new("@type", colors.yellow, nil, nil)
Group.new("Include", colors.yellow, nil, nil)

Group.new("@variable", colors.white, nil, nil)
Group.new("@variable.builtin", colors.white, nil, nil)

Group.new("@keyword", colors.purple, nil, styles.bold)

Group.new("@module", colors.orange, nil, nil)
Group.new("Macro", colors.orange, nil, nil)
