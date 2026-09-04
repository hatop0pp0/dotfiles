local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Bashやシェルとの連携を綺麗にする設定です
config.enable_bash_integration = true

return config
