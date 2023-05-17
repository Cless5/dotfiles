-- Settings
require("settings")
require("plugins")

-- Plugins
require("nvim-autopairs").setup()
require("lualine").setup({
	options = {
		icons_enabled = true
	}
})

require("keys")
