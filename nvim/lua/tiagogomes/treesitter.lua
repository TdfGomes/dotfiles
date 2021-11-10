require('nvim-treesitter.configs').setup {
  ensure_installed = "maintained",
  highlight = {
    additional_vim_regex_highlighting= false,
    enable = true,
  },
  indent = {enable = {"javascriptreact", "javascript", "typescript", "typescriptreact" }},
  autotag = {
    filetypes = {"javascriptreact", "javascript", "typescript", "typescriptreact" },
    enable = true
  },
  context_commentstring = {
    enable = true,
    config = {
      typescript = { __default = '// %s', __multiline = '/* %s */' },
      javascript = {
        __default = '// %s',
        jsx_element = '{/* %s */}',
        jsx_fragment = '{/* %s */}',
        jsx_attribute = '// %s',
        comment = '// %s'
      }
    }
  }
}
