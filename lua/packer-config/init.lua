return require('packer').startup(function() 
  use 'wbthomason/packer.nvim' -- Package manager. Packer can manage itself
  use 'kyazdani42/nvim-web-devicons'
  use 'EdenEast/nightfox.nvim'
  -- tag optional, updated every week. (see issue #1193)
  use { 'kyazdani42/nvim-tree.lua', tag = 'nightly' }
  use 'rcarriga/nvim-notify'
  use 'romgrk/barbar.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'sunjon/shade.nvim' --> dim inactive windows

  -- treesitter plugins
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/nvim-treesitter-refactor'
  use 'p00f/nvim-ts-rainbow'

  -- telescope plugins
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- LSP plugins
  use 'neovim/nvim-lspconfig' -- Colection of configurations for the built-in LSP client
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'onsails/lspkind.nvim'
  use 'jose-elias-alvarez/null-ls.nvim' --> inject lsp diagnistocs, formattings, code actions, and more ...
end)
