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

  -- LSP
  require('plugins.lsp.init'),

  -- Auto-Complete
  require('plugins.autocomplete'),

  -- Formatting
  require('plugins.conform'),

  -- Linting
  require('plugins.nvim-lint'),
}
