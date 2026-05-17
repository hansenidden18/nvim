function Color(color)
	color = color or "cyberdream" -- default

	if color == "base16" then
		local fav_base16_colors = {
			atelier_dune = "base16-atelier-dune",
			atelier_forest = "base16-atelier-forest",
			atelier_estuary = "base16-atelier-estuary",
			bright = "base16-bright",
			macintosh = "base16-macintosh",
			isotope = "base16-isotope",
			dracula = "base16-dracula",
			gruvbox_light_hard = "base16-gruvbox-light-hard",
			harmonic_light = "base16-harmonic-light",
			irblack = "base16-irblack",
			paraiso = "base16-paraiso",
		}
		color = fav_base16_colors.irblack or "base16-classic-dark"
	elseif color == "rose-pine" then
		require("rose-pine").setup({
			variant = "main", -- main (dark), dawn (light), moon,
			styles = {
				italic = false,
				bold = true,
				transparency = true,
			},
		})
	elseif color == "catppuccin" then
		require("catppuccin").setup({
			flavour = "mocha", -- latte (light), frappe, macchiato, mocha
			transparent_background = true, -- disables setting the background color
			no_italic = false, -- Force no italic
			no_bold = false, -- Force no bold
			highlight_overrides = {
				all = function(_)
					return {
						-- how catppuccin do signature highlights can easily be confused with other colors of the theme
						LspSignatureActiveParameter = { fg = "#7CFC00" },
					}
				end,
			},
		})
	elseif color == "onedark" then
		require("onedark").setup({
			style = "darker", -- dark, darker, cool, deep, warm, warmer, light
			transparent = true, -- enforced transparent background (see CLAUDE.md)
			term_colors = true,
		})
	elseif color == "cyberdream" then
		require("cyberdream").setup({
			variant = "default", -- default, auto, light
			transparent = true, -- keeps background black (see CLAUDE.md)
			italic_comments = true,
			borderless_pickers = false,
		})
	end

	vim.cmd.colorscheme(color)
end

return {
	{
		"RRethy/base16-nvim",
		name = "base16",
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
	},
	{
		"navarasu/onedark.nvim",
		name = "onedark",
	},
	{
		"scottmckendry/cyberdream.nvim",
		name = "cyberdream",
		priority = 1000,
		lazy = false,
		config = function()
			Color()
		end,
	},
}
