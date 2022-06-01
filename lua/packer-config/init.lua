return require('packer').startup(function() 
  use 'wbthomason/packer.nvim' -- Package manager. Packer can manage itself
  use 'kyazdani42/nvim-web-devicons'
  use 'EdenEast/nightfox.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'rcarriga/nvim-notify'
  use 'romgrk/barbar.nvim'
  use 'nvim-lualine/lualine.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- LSP plugins
  use 'neovim/nvim-lspconfig' -- Colection of configurations for the built-in LSP client
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'onsails/lspkind.nvim'
end)
