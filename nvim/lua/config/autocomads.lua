-- Create a group for our custom autocommands
local falcon_group = vim.api.nvim_create_augroup('FalconAutocommads', { clear = true })

-- Highlight the line on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  group = falcon_group,
  pattern = '*',
  callback = function()
    vim.hl.on_yank({ higroup = 'IncSearch', timeout = 200 })
  end,
  desc = 'Highlight yanked text',
})

-- Remove trailing whitespace on save
vim.api.nvim_create_autocmd('BufWritePre', {
  group = falcon_group,
  pattern = '*',
  command = [[%s/\s\+$//e]],
  desc = 'Remove trailing whitespace on save',
})

-- Show diagnostics on hover
vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
  group = falcon_group,
  pattern = '*',
  callback = function()
    vim.diagnostic.open_float(nil, {
      focus = false, -- Keep focus on the editing buffer
      scope = 'cursor',
    })
  end,
  desc = 'Show diagnostics on hover',
})
