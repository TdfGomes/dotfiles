vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  --Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'
  -- LSP
  use {
    'neovim/nvim-lspconfig', 
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/nvim-cmp',
  }
  -- Snipet engine
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  -- Theme
  use 'TdfGomes/onedark.nvim'
    --Git
  use 'tpope/vim-fugitive'
  -- Comment 
  use 'tpope/vim-commentary'
  -- Lualine
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  -- Tree 
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('nvim-tree').setup {
      disable_netrw = false,
      auto_open = true,
      auto_close = true,
      update_cwd = true,
      update_focused_file = {
        enable      = true,
        update_cwd  = true,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        }
      }
    } end
  }
  use 'editorconfig/editorconfig-vim'
end)
