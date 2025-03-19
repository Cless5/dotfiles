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

-- Uncomment lines after installing onedark
-- require('onedark').setup {
-- 	style = 'warmer'
-- }
-- require('onedark').load()

require("keys")
