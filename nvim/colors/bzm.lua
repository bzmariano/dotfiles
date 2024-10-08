local colorbuddy = require("colorbuddy")

colorbuddy.colorscheme("bzm")

local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
Color.new("background", "#000000")
Color.new("red", "#cc6666")
Color.new("gray", "#888888")
Color.new("yellow", "#aacc44")
Color.new("orange", "#cc8844")
Color.new("blue", "#44aaff")

Group.new("Normal", colors.superwhite, colors.background, nil)
Group.new("NormalFloat", groups.Normal, Group.Normal, nil)
Group.new("Operator", groups.Normal, nil, nil)
Group.new("LineNr", colors.gray, groups.Normal, nil)
Group.new("SignColumn", groups.Normal, groups.Normal, nil)
Group.new("Statusline", groups.Normal, groups.Normal, nil)
Group.new("Cursorline", nil, colors.background, nil)
Group.new("Directory", colors.blue, nil, nil, nil)
Group.new("Comment", colors.orange:light(), nil, styles.italic)
Group.new("Visual", colors.black, colors.gray:dark(), styles.bold)

Group.new("Special", colors.orange, nil, nil)
Group.new("SpecialChar", colors.orange, nil, nil)
Group.new("Boolean", colors.orange, nil, nil)
Group.new("Number", colors.orange, nil, nil)

Group.new("@string", colors.yellow, nil, nil)
Group.new("@function", groups.Normal, Group.Normal, nil)
Group.new("@variable", groups.Normal, Group.Normal, nil)
Group.new("@type", colors.gray, nil, nil)
Group.new("@type.builtin", colors.gray, nil, nil)
Group.new("@keyword", colors.blue, nil, nil)
Group.new("@keyword.function", colors.blue, nil, nil)
Group.new("@module", groups.Normal, nil, nil)
Group.new("@constant", colors.orange, nil, nil)
