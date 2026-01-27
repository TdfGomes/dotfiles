return {
  'williamboman/mason.nvim',
  opts = {
    ensure_installed = {
      -- lsp servers
      'tsserver',
      'pylsp',
      'lua_ls',
      'eslint',

      -- linters
      'pylint',

      -- formatters
      'stylua',
      'prettier',
      'ruff',
    },
  },
}
