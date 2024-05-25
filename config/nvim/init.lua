-- Settings
require("settings")

-- Plugins
require("plugins")
require("nvim-autopairs").setup()
require("lualine").setup({
	options = {
		icons_enabled = true
	}
})

require("keys")
