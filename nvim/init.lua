-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim and load our plugins
require('lazy').setup({
  spec = {
    -- All our plugin configuration files are in lua/plugins
    { import = 'plugins' },
  },
  rocks = {
    enabled = false,
  },
  -- Configure any other lazy.nvim options here
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

-- Load core settings
require('core.options')
require('core.keymaps')
require('core.autocomads')
