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
	use "windwp/nvim-ts-autotag"

  use 'ryanoasis/vim-devicons'

  use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

	-- Telescope dependencies
	use 'nvim-lua/plenary.nvim'
	use 'BurntSushi/ripgrep'
	use 'sharkdp/fd'
	use 'nvim-treesitter/nvim-treesitter'

	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Prettier
	use 'neovim/nvim-lspconfig'
	use 'jose-elias-alvarez/null-ls.nvim'
	use 'MunifTanjim/prettier.nvim'

	-- OneDark (uncomment line below after running PackerInstall)
	-- use 'navarasu/onedark.nvim'

end)
