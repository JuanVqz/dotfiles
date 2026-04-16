local wezterm = require 'wezterm'

local config = wezterm.config_builder()
-- local font = wezterm.font('SF Mono', { weight = 'Regular' })
-- local font = wezterm.font('VictorMono Nerd Font', { weight = 'Regular' })

config = {
  audible_bell = 'Disabled',
  color_scheme = 'Night Owl (Gogh)',
  -- font = font,
  font_size = 12.5,
  hide_tab_bar_if_only_one_tab = true,
  line_height = 1.5,
  window_background_opacity = .95,
  window_close_confirmation = 'NeverPrompt',
  window_decorations = 'RESIZE',
  window_padding = {
    bottom = 0,
  },
}

return config
