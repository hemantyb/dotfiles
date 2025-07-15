local wezterm = require "wezterm"
local config = {

  initial_cols = 116,
  initial_rows = 26,

  font_size = 14,
  font = wezterm.font "CaskaydiaCove Nerd Font",
  window_decorations = "TITLE | RESIZE",
  color_scheme = "GitHub Dark",
  enable_wayland = false,
  window_background_opacity = 0.98,
  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,
  window_padding = {
    left = 10,
    right = 1,
    top = 0,
    bottom = 0,
  },
}

local bar = wezterm.plugin.require "https://github.com/adriankarlen/bar.wezterm"
bar.apply_to_config(config)

return config
