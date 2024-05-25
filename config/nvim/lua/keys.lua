local function map(mode, key, rhs, opts)
	local options = { silent = true } or opts
	vim.api.nvim_set_keymap(mode, key, rhs, options)
end

-- NerdTree
map("n", "<C-n>", "<CMD> NERDTreeToggle <CR>")

-- Tabs
map("n", "<A-t>", "<CMD> tabnew <CR>")						-- New tab								Alt + t
map("n", "<A-h>", "<CMD> tabprevious <CR>")		-- Prev tab								Alt + left
map("n", "<A-l>", "<CMD> tabnext <CR>")				-- Next tab								Alt + right
map("n", "<A-q>", "<CMD> tabclose <CR>")					-- Close tab							Alt + w
map("n", "<A-y>", "<CMD> tabnew | terminal<CR>")	-- New tab with terminal	Alt + y

-- Splits
map("n", "<C-t>", "<CMD> vsplit <CR>")	-- New split								Ctrl + t
map("n", "<C-j>", "<CMD> wincmd j <CR>")	-- Nav up split							Ctrl + Up
map("n", "<C-h>", "<CMD> wincmd h <CR>")	-- Nav left split						Ctrl + Left
map("n", "<C-l>", "<CMD> wincmd l <CR>")	-- Nav right split					Ctrl + right
map("n", "<C-k>", "<CMD> wincmd k <CR>")	-- Nav down split						Ctrl + down
map("n", "<C-q>", "<CMD> q <CR>")	-- Close split							Ctrl + q
map("n", "<C-y>", "<CMD> vsplit | terminal<CR>")	-- New split with terminal	Ctrl + y

-- Code editing
map("n", "<A-k>", "<CMD> m-2 <CR>", { noremap = true, silent = true})	-- Move line up		Alt + Up
map("n", "<A-j>", "<CMD> m+1 <CR>", { noremap = true, silent = true})	-- Move line down	Alt + Down
map("n", "<C-d>", "viw", { noremap = true, silent = true })	-- Select word in cursor	Ctrl + d

-- Select coc.nvim highlighted suggestion
vim.api.nvim_set_keymap("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], {silent = true, noremap = true, expr = true, replace_keycodes = false})
