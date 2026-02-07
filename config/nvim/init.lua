-- Settings
require("settings")

-- Plugins
require("plugins")
require("nvim-autopairs").setup()
require("lualine").setup({
	options = {
		icons_enabled = true,
	},
})

require("oil").setup()

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		css = { "prettier "},
		html = { "prettier "},
		json = { "prettier "},
		markdown = { "prettier "},
		htmldjango = { "djlint "},
		python = { "black "},
	},
	format_on_save = {
		lsp_format = "fallback",
		timeout_ms = 500,
	},
})

-- Uncomment lines after installing onedark
-- require('onedark').setup {
-- 	style = 'darker'
-- }
-- require('onedark').load()

require("keys")
