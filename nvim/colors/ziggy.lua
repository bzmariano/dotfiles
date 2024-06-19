local colorbuddy = require("colorbuddy")

-- Set up your custom colorscheme if you want
colorbuddy.colorscheme("ziggy")

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
Color.new("blue", "#88aacc")
Color.new("green", "#66cc66")
Color.new("yellow", "#cccc66")
Color.new("orange", "#ffaa44")
Color.new("orange_dark", "#aa8844")
Color.new("red", "#ff6666")
Color.new("gray", "#bbbbbb")
Color.new("gray_dark", "#444444")
Color.new("dark_blue", "#102040")
Color.new("background", "#000000")

Group.new("FloatBorder", colors.white, nil, nil)
Group.new("Normal", colors.gray, colors.background, nil)
Group.new("NormalFloat", colors.gray, colors.background, nil)

Group.new("Title", colors.gray, nil, nil)
Group.new("Identifier", colors.gray, nil, nil)
Group.new("Operator", colors.gray, nil, nil)
Group.new("Function", colors.gray, nil, nil)
Group.new("Directory", colors.blue, nil, nil)
Group.new("Cursorline", nil, colors.dark_blue, nil)
Group.new("Visual", nil, colors.dark_blue, styles.bold + styles.italic)

Group.new("LineNr", colors.gray_dark, nil, nil)
Group.new("SignColumn", colors.gray_dark, nil, nil)

Group.new("Comment", colors.orange_dark, nil, nil)
Group.new("Whitespace", colors.gray_dark, nil, nil)

Group.new("Error", colors.red:dark(), nil, styles.italic)
Group.new("Warning", colors.orange:light():light(), nil, styles.italic)

Group.new("Number", colors.red, nil, nil)
Group.new("Float", colors.red, nil, nil)
Group.new("Boolean", colors.red, nil, nil)
Group.new("Underlined", colors.red, nil, nil)

Group.new("Delimiter", colors.white, nil, nil)

Group.new("String", colors.yellow, nil, nil)
Group.new("SpecialChar", colors.yellow, nil, nil)
Group.new("Character", colors.yellow, nil, nil)

Group.new("Special", colors.purple, nil, nil)
Group.new("Constant", colors.purple, nil, nil)
Group.new("Type", colors.purple, nil, nil)
Group.new("Typedef", colors.purple, nil, nil)
Group.new("Structure", colors.purple, nil, nil)
Group.new("@type.builtin", colors.purple, nil, styles.italic)
Group.new("@type", colors.purple, nil, nil)
Group.new("Include", colors.purple, nil, nil)

Group.new("@keyword", colors.white, nil, styles.bold)

Group.new("@module", colors.orange, nil, nil)
Group.new("Macro", colors.orange, nil, nil)
