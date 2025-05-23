local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config = {
  color_scheme = 'Night Owl (Gogh)',
  hide_tab_bar_if_only_one_tab = true,
  window_background_opacity = .95,
  audible_bell = 'Disabled',
  window_close_confirmation = 'NeverPrompt',
  window_decorations = 'RESIZE',
  line_height = 1.2,
  font_size = 12.5,
  window_padding = {
    bottom = 0,
  },
}

return config
