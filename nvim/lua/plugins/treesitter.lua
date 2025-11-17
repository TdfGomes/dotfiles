return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate', -- This command will run after installing or updating the plugin
  config = function()
    require('nvim-treesitter.configs').setup({
      -- A list of parser names, or "all"
      ensure_installed = {
        'javascript',
        'css',
        'json',
        'yaml',
        'html',
        'typescript',
        'python',
        'lua',
        'vim',
        'vimdoc',
      },

      autotag = {
        filetypes = { 'javascriptreact', 'javascript', 'typescript', 'typescriptreact' },
        enable = true,
      },
      -- Install parsers synchronously (only applied on :TSUpdate)
      sync_install = false,

      -- Automatically install missing parsers when entering a buffer
      -- You can also run :TSInstallAll for all parsers
      auto_install = true,

      -- List of modules to enable
      highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
    })
    local treesitter_parser_config = require('nvim-treesitter.parsers').get_parser_configs()
    treesitter_parser_config.templ = {
      install_info = {
        url = 'https://github.com/vrischmann/tree-sitter-templ.git',
        files = { 'src/parser.c', 'src/scanner.c' },
        branch = 'master',
      },
    }

    vim.treesitter.language.register('templ', 'templ')
  end,
}
