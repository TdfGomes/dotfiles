return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      theme = 'auto',
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
    },
    sections = {
      lualine_b = {
        {
          'branch',
        },
        {
          'diff',
          colored = true, -- displays diff status in color if set to true
          symbols = { added = ' ', modified = ' ', removed = ' ' }, -- changes diff symbols
        },
      },
      lualine_c = {
        {
          'filename',
          path = 0,
        },
        {
          'diagnostics',
          sources = { 'nvim_diagnostic' },
          sections = { 'error', 'warn', 'info', 'hint' },
          symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
        },
      },
      lualine_x = {
        {
          'filetype',
        },
      },
    },
    extensions = { 'fugitive', 'quickfix' },
  },
}
