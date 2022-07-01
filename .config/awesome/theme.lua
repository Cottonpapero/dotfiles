local themes_path = require("gears.filesystem").get_themes_dir()
local dpi = require("beautiful.xresources").apply_dpi

local theme = {}

-- {{{ Colors
theme.fg_normal  = "#DCDCCC"
theme.fg_focus   = "#F0DFAF"
theme.fg_urgent  = "#CC9393"
theme.bg_normal  = "#3F3F3F"
theme.bg_focus   = "#1E2320"
theme.bg_urgent  = "#3F3F3F"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap   = dpi(10)
theme.border_width  = dpi(3)
theme.border_normal = "#FFFFFF"
theme.border_focus  = "#14B393"
theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#2A363B"
theme.titlebar_bg_normal = "#1C2427"
-- }}}

-- {{{ Menu
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)
-- }}}

return theme
