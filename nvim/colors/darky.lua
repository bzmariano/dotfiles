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
Color.new("blue", "#44aacc")
Color.new("green", "#88cc88")
Color.new("pink", "#ccaacc")
Color.new("red", "#ff8888")
Color.new("gray", "#999999")
Color.new("dark_blue", "#102040")
Color.new("background", "#001520")

Group.new("LineNr", colors.gray, nil, nil)
Group.new("SignColumn", colors.gray, nil, nil)
Group.new("Delimiter", colors.gray, nil, nil)
Group.new("FloatBorder", colors.white, nil, nil)
Group.new("Normal", nil, colors.background, nil)
Group.new("NormalFloat", nil, colors.background, nil)

Group.new("Directory", colors.blue:dark(), nil, nil)
Group.new("Cursorline", nil, colors.dark_blue, nil)
Group.new("Visual", nil, colors.dark_blue, styles.bold + styles.italic)

Group.new("Comment", colors.gray, nil, styles.italic)
Group.new("Whitespace", colors.dark_blue, nil, nil)

Group.new("Error", colors.red:dark(), nil, styles.italic)
Group.new("Warning", colors.red:light(), nil, styles.italic)

Group.new("Number", colors.green, nil, nil)
Group.new("Float", colors.green, nil, nil)
Group.new("Boolean", colors.green, nil, nil)
Group.new("Special", colors.green, nil, nil)
Group.new("SpecialChar", colors.green, nil, nil)
Group.new("Character", colors.green, nil, nil)
Group.new("Underlined", colors.green, nil, nil)
Group.new("String", colors.green, nil, nil)

Group.new("Title", colors.white, nil, nil)
Group.new("Function", colors.white, nil, nil)
Group.new("Identifier", colors.white, nil, nil)
Group.new("Constant", colors.white, nil, nil)
Group.new("Operator", colors.white, nil, nil)
Group.new("@module", colors.white, nil, nil)
Group.new("@variable", colors.white, nil, nil)
Group.new("@variable.builtin", colors.white, nil, nil)

Group.new("Type", colors.white, nil, nil)
Group.new("Typedef", colors.white, nil, nil)
Group.new("Structure", colors.white, nil, nil)
Group.new("@type.builtin", colors.pink:dark(), nil, nil)

Group.new("Include", colors.pink:dark(), nil, nil)
Group.new("Macro", colors.blue, nil, nil)
Group.new("@keyword", colors.pink:dark(), nil, nil)
