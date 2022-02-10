require'nvim-treesitter.configs'.setup {
highlight = {
    enable = true,
  },
  indent = {
    enable = {
      "javascriptreact",
      "javascript",
      "typescript",
      "typescriptreact" 
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
  },
  autotag = {
    filetypes = {"javascriptreact", "javascript", "typescript", "typescriptreact" },
    enable = true
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
