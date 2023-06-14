--vim.cmd("colorscheme nightfly")

--local status, _ = pcall(vim.cmd, "colorscheme nightfly")
--if not status then
--	print("Color scheme not found!")
--	return
--end

--local status, _ = pcall(vim.cmd("colorscheme everforest"))
--if not status then
--	print("Color scheme not found!")
--	return
--end
vim.o.background = "dark"
require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = true,
	italic = {
		strings = true,
		comments = true,
		operators = false,
		folds = true,
	},
	strikethrough = true,
	invert_selection = false,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "medium", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = false,
})
--vim.cmd([[colorscheme gruvbox]])

local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
	print("Color scheme not found")
	return
end

--local status, _ = pcall(vim.cmd, "colorscheme melange")
--if not status then
--	print("Color scheme not found!")
--	return
--end
