require('lualine').setup {
  options = {
    theme = 'onedark',
    component_separators = {'', ''},
    section_separators = {'', ''},
  },
  sections = {
    lualine_b = {
      {
        'branch',
        color = { bg ='#2a324a' }
      } ,
      {
        'diff',
        colored = true, -- displays diff status in color if set to true
        -- all colors are in format #rrggbb
        color_added = '#97ca72', -- changes diff's added foreground color
        color_modified = '#ebc275', -- changes diff's modified foreground color
        color_removed = '#ef5f6b', -- changes diff's removed foreground color
        symbols = {added = ' ', modified = ' ', removed = ' '}, -- changes diff symbols
        color = { bg ='#2a324a' }
      },
    },
    lualine_c = {
      {
        'filename',
        path= 1,
      },
      {
        'g:coc_status',
      },
    },
    lualine_x = {
      {
        'filetype',
        color = { bg = '#2a324a' }
      },
    },
  },
  extensions = { 'fugitive', 'quickfix' }
