local packer = require('packer')

vim.cmd [[packadd packer.nvim]]

packer.init {
   display = {
      open_fn = function()
         return require("packer.util").float { border = "single" }
      end,
      prompt_border = "single",
   },
   git = {
      clone_timeout = 600, -- Timeout, in seconds, for git clones
      subcommands = {
        update = 'pull --ff-only --progress --rebase=true',
      }
   },
   auto_clean = true,
   compile_on_sync = true,
   --    auto_reload_compiled = true
}

packer.reset()

return packer.startup(function()
  use 'wbthomason/packer.nvim'
  -- LSP  
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  -- snipet engine
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  -- Neovim Tree shitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'nvim-treesitter/playground'
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'
  -- Theme
  use 'TdfGomes/onedark.nvim'
  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  --Git
  use 'tpope/vim-fugitive'
  -- Lualine
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {
      disable_netrw = false,
      auto_open = true,
      auto_close = true,
      update_cwd = true,
      update_focused_file = {
        enable      = true,
        update_cwd  = true,
      },
    } end
  }
end)


