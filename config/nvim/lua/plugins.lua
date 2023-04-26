-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }

  use 'preservim/nerdtree'

  use 'nvim-tree/nvim-web-devicons'

  use "windwp/nvim-autopairs"

  use 'ryanoasis/vim-devicons'

  use {
	'nvim-lualine/lualine.nvim',
	requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'shaunsingh/nord.nvim'
end)
