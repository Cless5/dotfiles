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

local prettier = require("prettier")

prettier.setup({
	bin = 'prettier',
	filetypes = {
		'html',
		'htmldjango',
		'javascript',
		'javascriptreact',
		'json',
		'markdown',
		'typescript',
		'typescriptreact',
		'css'
	}
})

-- Uncomment lines after installing onedark
-- require('onedark').setup {
-- 	style = 'warmer'
-- }
-- require('onedark').load()

require("keys")
