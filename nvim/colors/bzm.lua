local colorbuddy = require("colorbuddy")

colorbuddy.colorscheme("bzm")

local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

-- Use Color.new(<name>, <#rrggbb>) to create new colors
-- They can be accessed through colors.<name>
Color.new("background", "#000030")
Color.new("red", "#cc6666")
Color.new("gray", "#aaaaaa")
Color.new("green", "#99cc99")
Color.new("yellow", "#f0c674")
Color.new("blue", "#4488aa")

Group.new("Normal", colors.gray, nil, nil)
Group.new("NormalFloat", groups.Normal, Group.Normal, nil)
Group.new("Operator", colors.superwhite, nil, nil)
Group.new("LineNr", groups.Normal, Group.Normal, nil)
Group.new("SignColumn", groups.Normal, groups.Normal, nil)
Group.new("Statusline", groups.Normal, groups.Normal, nil)
Group.new("Visual", colors.black, colors.blue:dark(), styles.bold)

Group.new("Special", colors.blue, nil, styles.bold)
Group.new("SpecialChar", colors.blue, nil, styles.bold)
Group.new("Boolean", colors.blue, nil, styles.bold)
Group.new("Number", colors.blue, nil, styles.bold)

Group.new("Comment", colors.yellow, nil, styles.italic + styles.bold)

Group.new("@function", groups.Normal, Group.Normal, nil)
Group.new("@variable", groups.Normal, Group.Normal, nil)
Group.new("@type", colors.superwhite, nil, nil)
Group.new("@type.builtin", colors.superwhite, nil, nil)
Group.new("@keyword", colors.superwhite, nil, styles.italic + styles.bold)
Group.new("@keyword.function", colors.superwhite, nil, styles.italic + styles.bold)
Group.new("@module", colors.superwhite, nil, nil)
