require("colorbuddy").colorscheme("gruvz")

local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local Group = colorbuddy.Group
local c = colorbuddy.colors
local g = colorbuddy.groups
local s = colorbuddy.styles

Color.new("white", "#f2e5bc")
Color.new("red", "#cc6666")
Color.new("pink", "#fef601")
Color.new("green", "#99cc99")
Color.new("yellow", "#f8fe7a")
Color.new("blue", "#81a2ce")
Color.new("aqua", "#8ec07c")
Color.new("cyan", "#8abeb7")
Color.new("purple", "#8e6fbd")
Color.new("violet", "#b294bb")
Color.new("orange", "#de935f")
Color.new("brown", "#a3685a")
Color.new("gray", "#101010")
Color.new("black", "#000000")

Color.new("seagreen", "#698b69")
Color.new("turquoise", "#698b69")

local background_string = "#101010"
Color.new("gray0", background_string)

Group.new("Normal", c.superwhite, c.gray0)
Group.new("FloatBorder", c.superwhite, nil)
Group.new("Directory", c.blue, c.gray0)
Group.new("Status", c.gray0:light(), c.gray0)

Group.new("@constant", c.orange, nil, s.none)
Group.new("@function", c.yellow, nil, s.none)
Group.new("@function.bracket", g.Normal, g.Normal)
Group.new("@keyword", c.violet, nil, s.none)
Group.new("@keyword.faded", g.nontext.fg:light(), nil, s.none)
Group.new("@property", c.blue)
Group.new("@variable", c.superwhite, nil)
Group.new("@variable.builtin", c.purple:light():light(), g.Normal)
Group.new("@comment", c.blue:light(), g.Normal)
Group.new("SpecialChar", c.red, g.Normal)

-- I've always liked lua function calls to be blue. I don't know why.
Group.new("@function.call.lua", c.blue:dark(), nil, nil)

Group.new("Whitespace", c.gray, nil)
