-- Settings
require("settings")
require("keys")
require("plugins")

-- Plugins
require("nvim-autopairs").setup()
require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "nord"
	}
})
