return require('packer').startup(function() 
  use 'wbthomason/packer.nvim' -- Package manager. Packer can manage itself
  use 'neovim/nvim-lspconfig' -- Colection of configurations for the built-in LSP client
  use 'kyazdani42/nvim-web-devicons'
  use 'EdenEast/nightfox.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
end)
