local wezterm = require "wezterm"
local mux = wezterm.mux

-- Uncomment these lines to open wezterm in maximize mode
--
-- wezterm.on("gui-startup", function()
--   local tab, pane, window = mux.spawn_window{}
--   window:gui_window():maximize()
-- end)

return {
	-- Set Default Program as NeoVim

	default_prog = { 'nvim' },

	-- Set Font to JetBrains Mono

	font = wezterm.font "JetBrains Mono",
	font_size = 10.5,

	-- Change Appearance

	window_decorations = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,
	enable_scroll_bar = false,
	window_padding = {
		left = 4,
		right = 4,
		top = 4,
		bottom = 4
	},

	-- Change cursor hidden option

	hide_mouse_cursor_when_typing = true,

	-- Ignore Warnings

	warn_about_missing_glyphs = false,

	initial_rows = 50,
	initial_cols = 180
}
