local o = vim.o
local opt = vim.opt
local g = vim.g

o.tabstop = 2
o.shiftwidth = 2
o.softtabstop	= 2
o.termguicolors	= true
o.backup = false
o.writebackup	= false
o.updatetime = 300
o.signcolumn = "yes"
o.clipboard = "unnamedplus"
o.cursorline = true
opt.number = true
opt.relativenumber = true

vim.cmd('filetype plugin indent on')
