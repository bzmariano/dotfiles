require("colorbuddy").colorscheme("custom")

local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

Color.new("white", "#f2e5bc")
Color.new("red", "#cc6666")
Color.new("green", "#99cc99")
Color.new("yellow", "#f8fe7a")
Color.new("blue", "#81a2ce")
Color.new("aqua", "#8ec07c")
Color.new("cyan", "#8abeb7")
Color.new("purple", "#8e6fbd")
Color.new("violet", "#b294bb")
Color.new("orange", "#de935f")
Color.new("brown", "#a3685a")
Color.new("black", "#000000")

Color.new("seagreen", "#698b69")
Color.new("turquoise", "#698b69")

Group.new("Normal", c.superwhite, nil)
Group.new("NormalFloat", g.Normal, g.Normal)
Group.new("FloatBorder", g.Normal, g.Normal)
Group.new("Directory", c.blue, g.Normal)

Group.new("Status", c.gray0:light(), c.gray0)

Group.new("@constant", c.yellow, nil, s.none)
Group.new("@function", c.superwhite, nil, s.none)
Group.new("@function.bracket", g.Normal, g.Normal)
Group.new("@keyword", c.blue, nil, s.none)
Group.new("@type", c.violet, nil, s.none)
Group.new("@module", c.superwhite, nil, s.none)
Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none)
Group.new("@property", c.cyan, nil)
Group.new("@operator", c.superwhite, nil)
Group.new("@variable", c.superwhite, nil)
Group.new("@variable.builtin", c.purple:light():light(), g.Normal)

Group.new("SpecialChar", c.yellow, g.Normal)

-- I've always liked lua function calls to be blue. I don't know why.
Group.new("@function.call.lua", c.blue:dark(), nil, nil)

Group.new("@comment", c.orange, g.Normal)

Group.new("Whitespace", c.gray1:dark(), nil)
Group.new("LineNr", c.gray1, nil)
Group.new("Visual", c.superwhite, c.blue:dark())
