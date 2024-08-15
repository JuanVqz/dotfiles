local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Night Owl (Gogh)'

config.hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = 0.90

config.audible_bell = "Disabled"

return config
