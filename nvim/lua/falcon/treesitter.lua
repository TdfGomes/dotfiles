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
      "rust",
      "query"
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
    "rust",
    "query"
  },
  autotag = {
    filetypes = {"javascriptreact", "javascript", "typescript", "typescriptreact" },
    enable = true
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
