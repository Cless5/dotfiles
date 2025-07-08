local function map(mode, key, rhs, opts)
	local options = { silent = true } or opts
	vim.api.nvim_set_keymap(mode, key, rhs, options)
end

-- NerdTree
map("n", "<AS-b>", "<CMD> NERDTreeToggle <CR>")

-- Tabs
map("n", "<A-t>", "<CMD> tabnew <CR>")
map("n", "<A-h>", "<CMD> tabprevious <CR>")
map("n", "<A-l>", "<CMD> tabnext <CR>")
map("n", "<A-q>", "<CMD> tabclose <CR>")
map("n", "<A-y>", "<CMD> tabnew | terminal<CR>")

-- Splits
map("n", "<C-t>", "<CMD> vsplit <CR>")
map("n", "<C-j>", "<CMD> wincmd j <CR>")
map("n", "<C-h>", "<CMD> wincmd h <CR>")
map("n", "<C-l>", "<CMD> wincmd l <CR>")
map("n", "<C-k>", "<CMD> wincmd k <CR>")
map("n", "<C-q>", "<CMD> q <CR>")
map("n", "<C-y>", "<CMD> vsplit | terminal<CR>")

-- NewFile
map('n', '<C-n>', '<CMD> AdvancedNewFile <CR>')

-- Code editing
map("n", "<A-k>", "<CMD> m-2 <CR>", { noremap = true, silent = true})	-- Move line up		Alt + Up
map("n", "<A-j>", "<CMD> m+1 <CR>", { noremap = true, silent = true})	-- Move line down	Alt + Down
map("n", "<C-d>", "viw", { noremap = true, silent = true })	-- Select word in cursor	Ctrl + d

-- Telescope
map('n', '<A-f>', '<CMD> Telescope find_files <CR>', { noremap = true, silent = true })
map('n', '<C-f>', '<CMD> Telescope live_grep <CR>', { noremap = true, silent = true })

-- Prettier
map('n', '<AS-f>', '<CMD> Prettier <CR>', { noremap = true, silent = true })

-- Select coc.nvim highlighted suggestion
vim.api.nvim_set_keymap("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], {silent = true, noremap = true, expr = true, replace_keycodes = false})
