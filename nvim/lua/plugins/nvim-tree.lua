return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup({
      sort_by = 'case_sensitive',
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
        icons = {
          glyphs = {
            git = {
              unstaged = ' ',
              staged = ' ',
              renamed = ' ',
              untracked = ' ',
            },
          },
        },
      },
      disable_netrw = false,
      update_cwd = true,
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    })
  end,
}
