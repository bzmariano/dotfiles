local colorbuddy = require("colorbuddy")

-- Set up your custom colorscheme if you want
colorbuddy.colorscheme("darky")

-- And then modify as you like
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local styles = colorbuddy.styles

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
-- Color.new("background", "#282c34")

Color.new("white", "#ffffff")
Color.new("purple", "#bb88cc")
Color.new("blue", "#88ccff")
Color.new("green", "#88cc88")
Color.new("yellow", "#dddd66")
Color.new("orange", "#ccaa44")
Color.new("red", "#cc4444")
Color.new("gray", "#666666")
Color.new("dark_blue", "#102040")
Color.new("background", "#101010")

Group.new("Delimiter", colors.white, nil, nil)
Group.new("FloatBorder", colors.white, nil, nil)
Group.new("Normal", colors.white, colors.background, nil)
Group.new("NormalFloat", colors.white, colors.background, nil)

Group.new("Title", colors.white, nil, nil)
Group.new("Identifier", colors.white, nil, nil)
Group.new("Operator", colors.white, nil, nil)
Group.new("@module", colors.white, nil, nil)

Group.new("Directory", colors.yellow:light(), nil, nil)
Group.new("Cursorline", nil, colors.dark_blue, nil)
Group.new("Visual", nil, colors.dark_blue, styles.bold + styles.italic)

Group.new("Comment", colors.orange:dark(), nil, nil)
Group.new("Whitespace", colors.dark_blue:dark(), nil, nil)

Group.new("Error", colors.red:dark(), nil, styles.italic)
Group.new("Warning", colors.yellow:dark(), nil, styles.italic)

Group.new("Number", colors.green, nil, nil)
Group.new("Float", colors.green, nil, nil)
Group.new("Boolean", colors.green, nil, nil)
Group.new("SpecialChar", colors.green, nil, nil)
Group.new("Character", colors.green, nil, nil)
Group.new("Underlined", colors.green, nil, nil)
Group.new("String", colors.green, nil, nil)

Group.new("Special", colors.purple, nil, nil)
Group.new("Constant", colors.purple, nil, nil)
Group.new("Type", colors.purple, nil, nil)
Group.new("Typedef", colors.purple, nil, nil)
Group.new("Structure", colors.purple, nil, nil)
Group.new("@type.builtin", colors.purple, nil, styles.italic)
Group.new("@type", colors.purple, nil, nil)
Group.new("Include", colors.purple, nil, nil)

Group.new("@keyword", colors.white, nil, styles.bold)

Group.new("@variable", colors.white, nil, nil)

Group.new("Function", colors.yellow, nil, nil)

Group.new("Macro", colors.blue, nil, nil)

Group.new("LineNr", colors.gray, nil, nil)
Group.new("SignColumn", colors.gray, nil, nil)
