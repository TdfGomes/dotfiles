return {
  -- Theme
  require('plugins.theme'),

  -- Core plugins
  'nvim-lua/plenary.nvim', -- Useful lua functions used by lots of plugins

  -- Treesitter for syntax highlighting
  require('plugins.treesitter'),

  -- Autopairs
  require('plugins.autopairs'),

  -- File Explorer
  require('plugins.nvim-tree'),

  -- Git integration
  require('plugins.vim-fugitive'),

  -- Commenting
  require('plugins.vim-commentary'),

  -- Statusline
  require('plugins.lualine'),

  -- Fuzzy Finder
  require('plugins.telescope'),

  -- Managing tools
  require('plugins.mason'),
  -- LSP, Linting, and Formatting
  require('plugins.lsp.init'),
  require('plugins.conform'),
  require('plugins.nvim-lint'),

  -- Refactoring
  -- require 'plugins.refactoring',

  -- Autocompletion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',

  -- Snippets
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
}
