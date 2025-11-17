return {
  'williamboman/mason.nvim',
  opts = {
    ensure_installed = {
      -- lsp servers
      'tsserver',
      'pyright',
      'lua_ls',
      'eslint',

      -- linters
      'pylint',

      -- formatters
      'stylua',
      'prettier',
      'black',
      'isort',
    },
  },
}
