local function map(mode, key, rhs, opts)
	local options = { silent = true } or opts
	vim.api.nvim_set_keymap(mode, key, rhs, options)
end

-- NerdTree
map("n", "<C-n>", "<CMD> NERDTreeToggle <CR>")

-- Tabs
map("n", "<A-t>", "<CMD> tabnew <CR>")						-- New tab					Alt + t
map("n", "<A-Left>", "<CMD> tabprevious <CR>")		-- Prev tab					Alt + left
map("n", "<A-Right>", "<CMD> tabnext <CR>")				-- Next tab					Alt + right
map("n", "<A-w>", "<CMD> tabclose <CR>")					-- Close tab				Alt + w
map("n", "<A-y>", "<CMD> tabnew | terminal<CR>")	-- New tab with terminal	Alt + y

-- Splits
map("n", "<C-t>", "<CMD> vsplit <CR>")						-- New split				Ctrl + t
map("n", "<C-Up>", "<CMD> wincmd j <CR>")					-- Nav up split				Ctrl + Up
map("n", "<C-Left>", "<CMD> wincmd h <CR>")				-- Nav left split			Ctrl + Left
map("n", "<C-Right>", "<CMD> wincmd l <CR>")			-- Nav right split			Ctrl + right
map("n", "<C-Down>", "<CMD> wincmd k <CR>")				-- Nav down split			Ctrl + down
map("n", "<C-w>", "<CMD> q <CR>")									-- Close split				Ctrl + q
map("n", "<C-y>", "<CMD> vsplit | terminal<CR>")	-- New split with terminal	Ctrl + y

-- Select coc.nvim highlighted suggestion
vim.api.nvim_set_keymap("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], {silent = true, noremap = true, expr = true, replace_keycodes = false})
