local c = require('onedark.colors')

require('lualine').setup {
  options = {
    theme = 'onedark',
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
  },
  sections = {
    lualine_b = {
      {
        'branch',
        color = { bg = c.bg3 },
      } ,
      {
        'diff',
        -- colored = true, -- displays diff status in color if set to true
        -- all colors are in format #rrggbb
        diff_color = {
        -- Same values like general color option can be used here.
          added = {
            fg = c.green
          },
          modified = {
            fg = c.yellow
          },
          removed = {
            fg = c.red
          } 
        },
        symbols = {added = ' ', modified = ' ', removed = ' '}, -- changes diff symbols
        color = { bg = c.bg3 }
      },
    },
    lualine_c = {
      {
        'filename',
        path= 0,
      },
      {
        'diagnostics',
        sources = {'nvim_lsp'},
        sections = {'error', 'warn', 'info', 'hint'},
        symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '}
      }
    },
    lualine_x = {
      {
        'filetype',
        color = { bg = c.bg3 }
      },
    },
  },
  extensions = { 'fugitive', 'quickfix' }
}
