return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		local transparent = false -- set to true if you would like to enable transparency

		local bg = "#222222"
		local bg_dark = "#151515"
		local bg_highlight = "#222222"
		-- Inactive search match
		local bg_search = "#111111"
		-- Visual mode background
		local bg_visual = "#080808"
		local fg = "#cccccc"
		local fg_dark = "#85fa89"
		local fg_gutter = "#405355"
		-- it is what it says
		local fg_sidebar = "#85fa89"
		-- border between windows
		local border = "#85fa89"

		local warning = "#ed3437"
		local hint = "#85fa89"

		require("tokyonight").setup({
			style = "night",
			transparent = transparent,
			styles = {
				sidebars = transparent and "transparent" or "dark",
				floats = transparent and "transparent" or "dark",
			},
			on_colors = function(colors)
				colors.bg = bg
				colors.bg_dark = transparent and colors.none or bg_dark
				colors.bg_float = transparent and colors.none or bg_dark
				colors.bg_highlight = bg_highlight
				colors.bg_popup = bg_dark
				colors.bg_search = bg_search
				colors.bg_sidebar = transparent and colors.none or bg_dark
				colors.bg_statusline = transparent and colors.none or bg_dark
				colors.bg_visual = bg_visual
				colors.border = border
				colors.fg = fg
				colors.fg_dark = fg_dark
				colors.fg_float = fg
				colors.fg_gutter = fg_gutter
				colors.fg_sidebar = fg_sidebar
				colors.warning = warning
				colors.hint = hint
				colors.error = warning
			end,
		})

		vim.cmd("colorscheme tokyonight")
	end,
}
