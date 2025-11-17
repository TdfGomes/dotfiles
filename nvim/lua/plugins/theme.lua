return {
  'TdfGomes/onedark.nvim',
  lazy = false,    -- make sure the theme is loaded first
  priority = 1000, -- needs to be loaded before other plugins
  config = function()
    -- load the colorscheme here
    -- The correct name is 'onedark', without the hyphen.
    require('onedark').setup {
      style = 'cool'
    }
    require('onedark').load()
    -- vim.cmd.colorscheme('onedark')
  end,
}
