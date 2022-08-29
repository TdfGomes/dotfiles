require'nvim-treesitter.configs'.setup {
highlight = {
    enable = true,
  },
  indent = {
    enable = {
      "javascriptreact",
      "javascript",
      "typescript",
      "typescriptreact",
      "json",
      "css",
      "html",
      "rust"
    }
  },
  ensure_installed = {
    "lua",
    "tsx",
    "json",
    "yaml",
    "html",
    "javascript",
    "typescript",
    "css",
    "rust"
  },
  autotag = {
    filetypes = {"javascriptreact", "javascript", "typescript", "typescriptreact" },
    enable = true
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
