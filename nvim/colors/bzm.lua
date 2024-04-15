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

Color.new("blue", "#88ccff")
Color.new("green", "#66bb66")
Color.new("yellow", "#ffff88")
Color.new("orange", "#ffaa88")
Color.new("pink", "#aa88aa")
Color.new("red", "#ff8888")
Color.new("gray", "#888888")

Color.new("background", "#181418")
Color.new("cursorline", "#151525")
Color.new("visual", "#446688")

Group.new("Function", colors.yellow, nil, nil)
Group.new("mFunction", colors.yellow, nil, nil)

Group.new("Comment", colors.gray, nil, styles.italic)

Group.new("Constant", colors.orange, nil, nil)
Group.new("Number", colors.orange, nil, nil)
Group.new("Float", colors.orange, nil, nil)
Group.new("Boolean", colors.orange, nil, nil)
Group.new("Special", colors.orange, nil)

Group.new("String", colors.green, nil, nil)
Group.new("Character", colors.green, nil, nil)
Group.new("Underlined", colors.green, nil, nil)

Group.new("StorageClass", colors.pink, nil, styles.italic)
Group.new("Type", colors.pink, nil, styles.italic)
Group.new("Typedef", colors.pink, nil, styles.italic)
Group.new("Structure", colors.pink, nil, styles.italic)
Group.new("Tag", colors.pink, nil, styles.italic)

Group.new("Keyword", colors.blue, nil, nil)
Group.new("Statement", colors.blue, nil, nil)
Group.new("Conditional", colors.blue, nil, nil)
Group.new("Debug", colors.blue, nil, nil)
Group.new("Repeat", colors.blue, nil, nil)
Group.new("Label", colors.blue, nil, nil)
Group.new("Operator", colors.blue, nil, nil)
Group.new("Exception", colors.blue, nil, nil)
Group.new("Include", colors.blue, nil, nil)
Group.new("Define", colors.blue, nil, nil)
Group.new("Macro", colors.blue, nil, nil)
Group.new("PreCondit", colors.blue, nil, nil)
Group.new("Directory", colors.blue, nil, nil)
Group.new("Preproc", colors.blue, nil, nil)
Group.new("SpecialChar", colors.blue, nil)

Group.new("Error", colors.red, nil, styles.italic)

Group.new("Visual", colors.superwhite, colors.visual, styles.bold + styles.italic)

Group.new("Cursorline", nil, colors.cursorline, nil)

Group.new("LineNr", colors.gray, nil, nil)
Group.new("SignColumn", colors.gray, nil, nil)
Group.new("FloatBorder", colors.white, colors.visual:dark(), nil)
Group.new("Delimiter", colors.white, nil, nil)
Group.new("Normal", colors.white, colors.background, nil)
Group.new("NormalFloat", colors.white, nil, nil)
