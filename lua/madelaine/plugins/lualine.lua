local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local lualine_nightfly = require("lualine.themes.nightfly")

--local lualine_gruvbox = require("lualine.themes.gruvbox")
local lualine_cattpuccin = require("lualine.themes.catppuccin-mocha")

local new_colors = {
	blue = "#65D1FF",
	green = "#3EFFDC",
	violet = "#FF61EF",
	yellow = "#FFDA7B",
	black = "#000000",
}

lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet

lualine_nightfly.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black, --black
	},
}

lualine.setup({
	options = {
		theme = lualine_cattpuccin,
		component_separators = {},
		section_separators = {},
		transparency = true,
	},
	sections = {
		lualine_a = { "mode" },
	},
})
